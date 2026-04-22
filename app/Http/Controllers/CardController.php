<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Card;

class CardController extends Controller
{
    public function index()
    {
        $cards = Card::where('user_id', auth()->id())->get();
        return view('profile.cards', compact('cards'));
    }

    public function store(Request $request)
    {
        Card::create([
            'user_id' => auth()->id(),
            'bank_name' => $request->bank_name,
            'account_number' => $request->account_number,
            'card_name' => $request->card_name,
        ]);

        return back()->with('success', 'Kartu berhasil ditambahkan');
    }

    public function update(Request $request, $id)
    {
        $card = Card::findOrFail($id);
        $card->update($request->all());

        return back()->with('success', 'Kartu berhasil diupdate');
    }

    public function destroy($id)
    {
        Card::findOrFail($id)->delete();

        return back()->with('success', 'Kartu berhasil dihapus');
    }
}