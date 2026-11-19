package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.connectivity.WatchApiV2;
import com.vuitton.android.data.dto.travel.Airport;
import com.vuitton.android.data.dto.travel.CoordinatesDto;
import com.vuitton.android.data.dto.travel.FlightTravelDto;
import com.vuitton.android.data.dto.travel.HotelTravelDto;
import com.vuitton.android.data.dto.travel.Passenger;
import com.vuitton.android.data.dto.travel.Station;
import com.vuitton.android.data.dto.travel.TrainTravelDto;
import com.vuitton.android.data.dto.travel.TravelDto;
import com.vuitton.android.data.dto.travel.Traveler;
import com.vuitton.android.data.dto.travel.UnknownTravelDto;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.TravelRepository;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Flight;
import com.vuitton.foundation.model.domain.model.connectivity.travel.FlightAirport;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Hotel;
import com.vuitton.foundation.model.domain.model.connectivity.travel.HotelPlace;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Train;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/TravelRepositoryImpl;", "Lcom/vuitton/android/domain/repository/TravelRepository;", "Lcom/vuitton/android/data/api/connectivity/WatchApiV2;", "watchApiV2", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "<init>", "(Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TravelRepositoryImpl implements TravelRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WatchApiV2 f48055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f48056b;

    @Inject
    public TravelRepositoryImpl(WatchApiV2 watchApiV2, AuthTokenRepository authTokenRepository) {
        watchApiV2.getClass();
        authTokenRepository.getClass();
        this.f48055a = watchApiV2;
        this.f48056b = authTokenRepository;
    }

    public static Travel e(TravelDto travelDto) {
        CoordinatesDto coordinatesDto;
        CoordinatesDto coordinatesDto2;
        CoordinatesDto coordinatesDto3;
        CoordinatesDto coordinatesDto4;
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = null;
        str = null;
        String str6 = null;
        str5 = null;
        if (!(travelDto instanceof FlightTravelDto)) {
            if (travelDto instanceof HotelTravelDto) {
                HotelTravelDto hotelTravelDto = (HotelTravelDto) travelDto;
                String str7 = hotelTravelDto.f46908a;
                String str8 = hotelTravelDto.f46910c;
                CoordinatesDto coordinatesDto5 = hotelTravelDto.g;
                return new Hotel(str7, str8, new HotelPlace(coordinatesDto5 != null ? coordinatesDto5.f46899a : null, coordinatesDto5 != null ? coordinatesDto5.f46900b : null, hotelTravelDto.d, hotelTravelDto.f46909b), hotelTravelDto.f46911e, hotelTravelDto.f46912f, hotelTravelDto.f46913h);
            }
            if (!(travelDto instanceof TrainTravelDto)) {
                if (travelDto instanceof UnknownTravelDto) {
                    return null;
                }
                v40.g();
                return null;
            }
            TrainTravelDto trainTravelDto = (TrainTravelDto) travelDto;
            Station station = trainTravelDto.d;
            Station station2 = trainTravelDto.f46924c;
            List list = trainTravelDto.f46925e;
            String str9 = trainTravelDto.f46922a;
            String str10 = trainTravelDto.f46923b;
            com.vuitton.foundation.model.domain.model.connectivity.travel.Station station3 = new com.vuitton.foundation.model.domain.model.connectivity.travel.Station(station2 != null ? station2.f46920c : null, station2 != null ? station2.f46919b : null, (station2 == null || (coordinatesDto4 = station2.d) == null) ? null : coordinatesDto4.f46899a, (station2 == null || (coordinatesDto3 = station2.d) == null) ? null : coordinatesDto3.f46900b);
            Date date = station2 != null ? station2.f46918a : null;
            com.vuitton.foundation.model.domain.model.connectivity.travel.Station station4 = new com.vuitton.foundation.model.domain.model.connectivity.travel.Station(station != null ? station.f46920c : null, station != null ? station.f46919b : null, (station == null || (coordinatesDto2 = station.d) == null) ? null : coordinatesDto2.f46899a, (station == null || (coordinatesDto = station.d) == null) ? null : coordinatesDto.f46900b);
            Date date2 = station != null ? station.f46918a : null;
            List list2 = list;
            String str11 = (list2 == null || list2.isEmpty()) ? null : ((Traveler) list.get(0)).f46929a;
            if (list2 != null && !list2.isEmpty()) {
                str5 = ((Traveler) list.get(0)).f46930b;
            }
            return new Train(str9, str10, station3, date, station4, date2, str11, str5);
        }
        FlightTravelDto flightTravelDto = (FlightTravelDto) travelDto;
        List list3 = flightTravelDto.f46905e;
        String str12 = flightTravelDto.f46902a;
        Airport airport = flightTravelDto.f46904c;
        String str13 = airport != null ? airport.f46888b : null;
        String str14 = airport != null ? airport.f46889c : null;
        Date date3 = airport != null ? airport.f46887a : null;
        String str15 = airport != null ? airport.d : null;
        if (airport != null) {
            String str16 = str15;
            str2 = airport.f46890e;
            str = str16;
        } else {
            str = str15;
            str2 = null;
        }
        FlightAirport flightAirport = new FlightAirport(str13, str14, date3, str, str2);
        Airport airport2 = flightTravelDto.d;
        String str17 = airport2 != null ? airport2.f46888b : null;
        String str18 = airport2 != null ? airport2.f46889c : null;
        Date date4 = airport2 != null ? airport2.f46887a : null;
        String str19 = airport2 != null ? airport2.d : null;
        if (airport2 != null) {
            String str20 = str19;
            str4 = airport2.f46890e;
            str3 = str20;
        } else {
            str3 = str19;
            str4 = null;
        }
        FlightAirport flightAirport2 = new FlightAirport(str17, str18, date4, str3, str4);
        String str21 = flightTravelDto.f46903b;
        List list4 = list3;
        if (list4 != null && !list4.isEmpty()) {
            str6 = ((Passenger) list3.get(0)).f46916a;
        }
        return new Flight(str12, flightAirport, flightAirport2, str21, str6);
    }

    public static TravelDto f(Travel travel) {
        ArrayList arrayListL = null;
        if (travel instanceof Flight) {
            Flight flight = (Flight) travel;
            String str = flight.f67358c;
            String str2 = flight.f67360f;
            FlightAirport flightAirport = flight.d;
            Airport airport = new Airport(flightAirport != null ? flightAirport.f67363c : null, flightAirport != null ? flightAirport.f67361a : null, flightAirport != null ? flightAirport.f67362b : null, flightAirport != null ? flightAirport.d : null, flightAirport != null ? flightAirport.f67364e : null);
            FlightAirport flightAirport2 = flight.f67359e;
            Airport airport2 = new Airport(flightAirport2 != null ? flightAirport2.f67363c : null, flightAirport2 != null ? flightAirport2.f67361a : null, flightAirport2 != null ? flightAirport2.f67362b : null, flightAirport2 != null ? flightAirport2.d : null, flightAirport2 != null ? flightAirport2.f67364e : null);
            String str3 = flight.g;
            return new FlightTravelDto(str, str2, airport, airport2, str3 != null ? CollectionsKt.l(new Passenger(str3)) : null, (String) null, 32, (DefaultConstructorMarker) null);
        }
        if (travel instanceof Hotel) {
            Hotel hotel = (Hotel) travel;
            HotelPlace hotelPlace = hotel.f67366e;
            return new HotelTravelDto(hotel.f67365c, hotelPlace != null ? hotelPlace.d : null, hotel.d, hotelPlace != null ? hotelPlace.f67371c : null, hotel.f67367f, hotel.g, new CoordinatesDto(hotelPlace != null ? hotelPlace.f67369a : null, hotelPlace != null ? hotelPlace.f67370b : null), hotel.f67368h, (String) null, 256, (DefaultConstructorMarker) null);
        }
        if (!(travel instanceof Train)) {
            v40.g();
            return null;
        }
        Train train = (Train) travel;
        String str4 = train.f67380j;
        String str5 = train.f67379i;
        com.vuitton.foundation.model.domain.model.connectivity.travel.Station station = train.g;
        com.vuitton.foundation.model.domain.model.connectivity.travel.Station station2 = train.f67376e;
        String str6 = train.f67375c;
        String str7 = train.d;
        Date date = train.f67377f;
        String str8 = station2 != null ? station2.f67373b : null;
        String str9 = station2 != null ? station2.f67372a : null;
        station2.getClass();
        Station station3 = new Station(date, str8, str9, new CoordinatesDto(station2.f67374c, station2.d));
        String str10 = str5;
        Date date2 = train.f67378h;
        String str11 = station != null ? station.f67373b : null;
        String str12 = station != null ? station.f67372a : null;
        station.getClass();
        Station station4 = new Station(date2, str11, str12, new CoordinatesDto(station.f67374c, station.d));
        if (str10 != null || str4 != null) {
            if (str10 == null) {
                str10 = "";
            }
            if (str4 == null) {
                str4 = "";
            }
            arrayListL = CollectionsKt.l(new Traveler(str10, str4));
        }
        return new TrainTravelDto(str6, str7, station3, station4, arrayListL, (String) null, 32, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        if (r12 == r1) goto L29;
     */
    @Override // com.vuitton.android.domain.repository.TravelRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.connectivity.travel.Travel r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TravelRepositoryImpl.a(com.vuitton.foundation.model.domain.model.connectivity.travel.Travel, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
    
        if (r8.deleteTravel(r10, r9, r0) == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.TravelRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.String r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.vuitton.android.data.repository.TravelRepositoryImpl$deleteTravel$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.data.repository.TravelRepositoryImpl$deleteTravel$1 r0 = (com.vuitton.android.data.repository.TravelRepositoryImpl$deleteTravel$1) r0
            int r1 = r0.f48067h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f48067h = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.TravelRepositoryImpl$deleteTravel$1 r0 = new com.vuitton.android.data.repository.TravelRepositoryImpl$deleteTravel$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f48066f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f48067h
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L48
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2d
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L2b
            goto L7f
        L2b:
            r8 = move-exception
            goto L87
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r5
        L33:
            int r9 = r0.f48065e
            int r2 = r0.d
            int r4 = r0.f48064c
            java.lang.String r6 = r0.f48063b
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L2b
            kotlin.Result r10 = (kotlin.Result) r10     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r10 = r10.f71708b     // Catch: java.lang.Throwable -> L2b
            r7 = r2
            r2 = r9
            r9 = r6
            r6 = r4
            r4 = r7
            goto L63
        L48:
            kotlin.ResultKt.b(r10)
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L2b
            com.vuitton.android.domain.repository.AuthTokenRepository r10 = r8.f48056b     // Catch: java.lang.Throwable -> L2b
            r0.f48063b = r9     // Catch: java.lang.Throwable -> L2b
            r2 = 0
            r0.f48064c = r2     // Catch: java.lang.Throwable -> L2b
            r0.d = r2     // Catch: java.lang.Throwable -> L2b
            r0.f48065e = r2     // Catch: java.lang.Throwable -> L2b
            r0.f48067h = r4     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r10 = r10.c(r0)     // Catch: java.lang.Throwable -> L2b
            if (r10 != r1) goto L61
            goto L7e
        L61:
            r4 = r2
            r6 = r4
        L63:
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L2b
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L2b
            com.vuitton.android.data.api.connectivity.WatchApiV2 r8 = r8.f48055a     // Catch: java.lang.Throwable -> L2b
            java.lang.String r10 = com.vuitton.android.data.repository.TokenExtKt.a(r10)     // Catch: java.lang.Throwable -> L2b
            r0.f48063b = r5     // Catch: java.lang.Throwable -> L2b
            r0.f48064c = r6     // Catch: java.lang.Throwable -> L2b
            r0.d = r4     // Catch: java.lang.Throwable -> L2b
            r0.f48065e = r2     // Catch: java.lang.Throwable -> L2b
            r0.f48067h = r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r8 = r8.deleteTravel(r10, r9, r0)     // Catch: java.lang.Throwable -> L2b
            if (r8 != r1) goto L7f
        L7e:
            return r1
        L7f:
            kotlin.Unit r8 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L2b
            kotlin.Result r9 = new kotlin.Result     // Catch: java.lang.Throwable -> L2b
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L2b
            goto L8e
        L87:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
        L8e:
            java.lang.Throwable r8 = kotlin.Result.a(r9)
            if (r8 != 0) goto L95
            goto La4
        L95:
            boolean r9 = r8 instanceof java.util.concurrent.CancellationException
            if (r9 != 0) goto Lad
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            kotlin.Result r8 = new kotlin.Result
            r8.<init>(r9)
            r9 = r8
        La4:
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r8 = r9.f71708b
            java.lang.Object r8 = com.vuitton.android.data.exception.NetworkExceptionMapperKt.a(r8, r5)
            return r8
        Lad:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TravelRepositoryImpl.b(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0072, code lost:
    
        if (r9 == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.TravelRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$1 r0 = (com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$1 r0 = new com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f48076e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2d
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L2b
            goto L75
        L2b:
            r8 = move-exception
            goto L7d
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r5
        L33:
            int r2 = r0.d
            int r4 = r0.f48075c
            int r6 = r0.f48074b
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L2b
            kotlin.Result r9 = (kotlin.Result) r9     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r9 = r9.f71708b     // Catch: java.lang.Throwable -> L2b
            goto L5a
        L41:
            kotlin.ResultKt.b(r9)
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L2b
            com.vuitton.android.domain.repository.AuthTokenRepository r9 = r8.f48056b     // Catch: java.lang.Throwable -> L2b
            r2 = 0
            r0.f48074b = r2     // Catch: java.lang.Throwable -> L2b
            r0.f48075c = r2     // Catch: java.lang.Throwable -> L2b
            r0.d = r2     // Catch: java.lang.Throwable -> L2b
            r0.g = r4     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r9 = r9.c(r0)     // Catch: java.lang.Throwable -> L2b
            if (r9 != r1) goto L58
            goto L74
        L58:
            r4 = r2
            r6 = r4
        L5a:
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L2b
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Throwable -> L2b
            com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$2$1 r7 = new com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$2$1     // Catch: java.lang.Throwable -> L2b
            r7.<init>(r8, r9, r5)     // Catch: java.lang.Throwable -> L2b
            r0.f48074b = r6     // Catch: java.lang.Throwable -> L2b
            r0.f48075c = r4     // Catch: java.lang.Throwable -> L2b
            r0.d = r2     // Catch: java.lang.Throwable -> L2b
            r0.g = r3     // Catch: java.lang.Throwable -> L2b
            r8 = 10000(0x2710, double:4.9407E-320)
            java.lang.Object r9 = kotlinx.coroutines.TimeoutKt.b(r8, r7, r0)     // Catch: java.lang.Throwable -> L2b
            if (r9 != r1) goto L75
        L74:
            return r1
        L75:
            java.util.List r9 = (java.util.List) r9     // Catch: java.lang.Throwable -> L2b
            kotlin.Result r8 = new kotlin.Result     // Catch: java.lang.Throwable -> L2b
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L2b
            goto L85
        L7d:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            r8 = r9
        L85:
            java.lang.Throwable r9 = kotlin.Result.a(r8)
            if (r9 != 0) goto L8c
            goto L9b
        L8c:
            boolean r8 = r9 instanceof java.util.concurrent.CancellationException
            if (r8 != 0) goto La4
            kotlin.Result$Failure r8 = new kotlin.Result$Failure
            r8.<init>(r9)
            kotlin.Result r9 = new kotlin.Result
            r9.<init>(r8)
            r8 = r9
        L9b:
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            java.lang.Object r8 = com.vuitton.android.data.exception.NetworkExceptionMapperKt.a(r8, r5)
            return r8
        La4:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TravelRepositoryImpl.c(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
    
        if (r11 == r1) goto L29;
     */
    @Override // com.vuitton.android.domain.repository.TravelRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(com.vuitton.foundation.model.domain.model.connectivity.travel.Travel r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.vuitton.android.data.repository.TravelRepositoryImpl$createTravel$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.data.repository.TravelRepositoryImpl$createTravel$1 r0 = (com.vuitton.android.data.repository.TravelRepositoryImpl$createTravel$1) r0
            int r1 = r0.f48062i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f48062i = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.TravelRepositoryImpl$createTravel$1 r0 = new com.vuitton.android.data.repository.TravelRepositoryImpl$createTravel$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.g
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f48062i
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L36
            if (r2 != r3) goto L30
            com.vuitton.android.data.repository.TravelRepositoryImpl r9 = r0.f48058c
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L2d
            goto L88
        L2d:
            r9 = move-exception
            goto La1
        L30:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r5
        L36:
            int r10 = r0.f48060f
            int r2 = r0.f48059e
            int r4 = r0.d
            com.vuitton.foundation.model.domain.model.connectivity.travel.Travel r6 = r0.f48057b
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L2d
            kotlin.Result r11 = (kotlin.Result) r11     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r11 = r11.f71708b     // Catch: java.lang.Throwable -> L2d
            r8 = r2
            r2 = r10
            r10 = r6
            r6 = r4
            r4 = r8
            goto L66
        L4b:
            kotlin.ResultKt.b(r11)
            kotlin.Result$Companion r11 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L2d
            com.vuitton.android.domain.repository.AuthTokenRepository r11 = r9.f48056b     // Catch: java.lang.Throwable -> L2d
            r0.f48057b = r10     // Catch: java.lang.Throwable -> L2d
            r2 = 0
            r0.d = r2     // Catch: java.lang.Throwable -> L2d
            r0.f48059e = r2     // Catch: java.lang.Throwable -> L2d
            r0.f48060f = r2     // Catch: java.lang.Throwable -> L2d
            r0.f48062i = r4     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r11 = r11.c(r0)     // Catch: java.lang.Throwable -> L2d
            if (r11 != r1) goto L64
            goto L87
        L64:
            r4 = r2
            r6 = r4
        L66:
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r11 = (java.lang.String) r11     // Catch: java.lang.Throwable -> L2d
            com.vuitton.android.data.api.connectivity.WatchApiV2 r7 = r9.f48055a     // Catch: java.lang.Throwable -> L2d
            java.lang.String r11 = com.vuitton.android.data.repository.TokenExtKt.a(r11)     // Catch: java.lang.Throwable -> L2d
            com.vuitton.android.data.dto.travel.TravelDto r10 = f(r10)     // Catch: java.lang.Throwable -> L2d
            r0.f48057b = r5     // Catch: java.lang.Throwable -> L2d
            r0.f48058c = r9     // Catch: java.lang.Throwable -> L2d
            r0.d = r6     // Catch: java.lang.Throwable -> L2d
            r0.f48059e = r4     // Catch: java.lang.Throwable -> L2d
            r0.f48060f = r2     // Catch: java.lang.Throwable -> L2d
            r0.f48062i = r3     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r11 = r7.createTravel(r11, r10, r0)     // Catch: java.lang.Throwable -> L2d
            if (r11 != r1) goto L88
        L87:
            return r1
        L88:
            com.vuitton.android.data.dto.travel.TravelDto r11 = (com.vuitton.android.data.dto.travel.TravelDto) r11     // Catch: java.lang.Throwable -> L2d
            r9.getClass()     // Catch: java.lang.Throwable -> L2d
            com.vuitton.foundation.model.domain.model.connectivity.travel.Travel r9 = e(r11)     // Catch: java.lang.Throwable -> L2d
            if (r9 == 0) goto L99
            kotlin.Result r10 = new kotlin.Result     // Catch: java.lang.Throwable -> L2d
            r10.<init>(r9)     // Catch: java.lang.Throwable -> L2d
            goto La8
        L99:
            java.lang.String r9 = "Required value was null."
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L2d
            r10.<init>(r9)     // Catch: java.lang.Throwable -> L2d
            throw r10     // Catch: java.lang.Throwable -> L2d
        La1:
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
        La8:
            java.lang.Throwable r9 = kotlin.Result.a(r10)
            if (r9 != 0) goto Laf
            goto Lbe
        Laf:
            boolean r10 = r9 instanceof java.util.concurrent.CancellationException
            if (r10 != 0) goto Lc7
            kotlin.Result$Failure r10 = new kotlin.Result$Failure
            r10.<init>(r9)
            kotlin.Result r9 = new kotlin.Result
            r9.<init>(r10)
            r10 = r9
        Lbe:
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r9 = r10.f71708b
            java.lang.Object r9 = com.vuitton.android.data.exception.NetworkExceptionMapperKt.a(r9, r5)
            return r9
        Lc7:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TravelRepositoryImpl.d(com.vuitton.foundation.model.domain.model.connectivity.travel.Travel, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
