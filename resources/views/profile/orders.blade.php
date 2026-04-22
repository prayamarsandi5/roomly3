@extends('layouts.app')

@push('styles')
    <link rel="stylesheet" href="{{ asset('assets/css/kartu.css') }}">
@endpush

@section('content')
<div class="container py-4">
    <div class="row">
        <div class="col-md-3">
            @include('layouts.sidebar_profile')
        </div>

        <div class="col-md-9">
            <ul class="nav nav-order mb-4">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Akan Datang</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Selesai</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Dibatalkan</a>
                </li>
            </ul>

            <div class="order-card d-flex">
                <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" class="hotel-img" alt="Hotel">
                
                <div class="p-3 flex-grow-1">
                    <div class="d-flex justify-content-between align-items-start">
                        <div>
                            <h5 class="fw-bold mb-0">Aston Solo Hotel</h5>
                            <small class="text-muted">ID Pesanan: 134567876</small>
                            <div class="status-paid mt-1">
                                <i class="fas fa-check-circle"></i> SUDAH DIBAYAR
                            </div>
                        </div>
                        <div class="d-flex gap-3 text-center">
                            <div class="date-box">
                                <small class="text-muted d-block">CHECK-IN</small>
                                <span class="fw-bold h4">12</span> <small>Mar 2026<br>Kam</small>
                            </div>
                            <div class="date-box">
                                <small class="text-muted d-block">CHECK-OUT</small>
                                <span class="fw-bold h4">13</span> <small>Mar 2026<br>Jum</small>
                            </div>
                        </div>
                    </div>

                    <div class="order-details mt-2">
                        <p><i class="fas fa-users me-1"></i> 2 Tamu | <i class="fas fa-bed me-1"></i> 1 Bed</p>
                        <p><i class="fas fa-undo me-1"></i> Pemesanan ini tidak bisa di-refund.</p>
                        <p><i class="fas fa-calendar-times me-1"></i> Non-reschedulable</p>
                        <p><i class="fas fa-wifi me-1"></i> Wi-Fi</p>
                        <p class="mt-2 mb-0 fw-bold small">Permintaan khusus (jika ada)</p>
                        <p class="small">-</p>
                    </div>

                    <div class="d-flex justify-content-between align-items-end mt-2">
                        <div class="price-tag">IDR 535.000</div>
                        <div class="d-flex gap-2">
                            <button class="btn btn-cancel px-3 py-1">Batalkan</button>
                            <button class="btn btn-maps px-3 py-1">Lihat Maps</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="order-card d-flex">
                <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" class="hotel-img" alt="Hotel">
                
                <div class="p-3 flex-grow-1">
                    <div class="d-flex justify-content-between align-items-start">
                        <div>
                            <h5 class="fw-bold mb-0">Aston Solo Hotel</h5>
                            <small class="text-muted">ID Pesanan: 134567876</small>
                            <div class="status-pending mt-1">
                                <i class="fas fa-clock"></i> PERLU DIBAYAR
                            </div>
                        </div>
                        <div class="d-flex gap-3 text-center">
                            <div class="date-box">
                                <small class="text-muted d-block">CHECK-IN</small>
                                <span class="fw-bold h4">12</span> <small>Mar 2026<br>Kam</small>
                            </div>
                            <div class="date-box">
                                <small class="text-muted d-block">CHECK-OUT</small>
                                <span class="fw-bold h4">13</span> <small>Mar 2026<br>Jum</small>
                            </div>
                        </div>
                    </div>

                    <div class="order-details mt-2">
                        <p><i class="fas fa-users me-1"></i> 2 Tamu | <i class="fas fa-bed me-1"></i> 1 Bed</p>
                        <p><i class="fas fa-undo me-1"></i> Pemesanan ini tidak bisa di-refund.</p>
                        <p><i class="fas fa-calendar-times me-1"></i> Non-reschedulable</p>
                        <p><i class="fas fa-wifi me-1"></i> Wi-Fi</p>
                        <p class="mt-2 mb-0 fw-bold small">Permintaan khusus (jika ada)</p>
                        <p class="small">-</p>
                    </div>

                    <div class="d-flex justify-content-between align-items-end mt-2">
                        <div class="price-tag">IDR 535.000</div>
                        <div class="d-flex gap-2">
                            <button class="btn btn-cancel px-3 py-1">Batalkan</button>
                            <button class="btn btn-pay px-4 py-1">Bayar</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection