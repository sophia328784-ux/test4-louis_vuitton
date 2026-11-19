package com.vuitton.android.presentation.screen.connectivity.travel;

import com.vuitton.foundation.model.domain.model.connectivity.travel.Flight;
import com.vuitton.foundation.model.domain.model.connectivity.travel.FlightAirport;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Hotel;
import com.vuitton.foundation.model.domain.model.connectivity.travel.HotelPlace;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Station;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Train;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import com.vuitton.foundation.model.domain.model.connectivity.travel.TravelType;
import defpackage.v40;
import java.util.Date;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56341a;

        static {
            int[] iArr = new int[TravelType.values().length];
            try {
                iArr[TravelType.HOTEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TravelType.FLIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TravelType.TRAIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56341a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Travel a(TravelUiModel travelUiModel) {
        travelUiModel.getClass();
        if (travelUiModel instanceof HotelUiModel) {
            HotelUiModel hotelUiModel = (HotelUiModel) travelUiModel;
            String str = hotelUiModel.f56337c;
            String str2 = hotelUiModel.d;
            HotelPlaceUiModel hotelPlaceUiModel = hotelUiModel.f56338e;
            return new Hotel(str, str2, hotelPlaceUiModel != null ? new HotelPlace(hotelPlaceUiModel.f56334b, hotelPlaceUiModel.f56335c, hotelPlaceUiModel.d, hotelPlaceUiModel.f56336e) : null, hotelUiModel.f56339f, hotelUiModel.g, hotelUiModel.f56340h);
        }
        if (travelUiModel instanceof FlightUiModel) {
            FlightUiModel flightUiModel = (FlightUiModel) travelUiModel;
            String str3 = flightUiModel.f56330c;
            FlightAirportUiModel flightAirportUiModel = flightUiModel.d;
            FlightAirport flightAirport = flightAirportUiModel != null ? new FlightAirport(flightAirportUiModel.f56326b, flightAirportUiModel.f56327c, flightAirportUiModel.d, flightAirportUiModel.f56328e, flightAirportUiModel.f56329f) : null;
            FlightAirportUiModel flightAirportUiModel2 = flightUiModel.f56331e;
            return new Flight(str3, flightAirport, flightAirportUiModel2 != null ? new FlightAirport(flightAirportUiModel2.f56326b, flightAirportUiModel2.f56327c, flightAirportUiModel2.d, flightAirportUiModel2.f56328e, flightAirportUiModel2.f56329f) : null, flightUiModel.f56332f, flightUiModel.g);
        }
        if (!(travelUiModel instanceof TrainUiModel)) {
            v40.g();
            return null;
        }
        TrainUiModel trainUiModel = (TrainUiModel) travelUiModel;
        String str4 = trainUiModel.f56345c;
        String str5 = trainUiModel.d;
        StationUiModel stationUiModel = trainUiModel.f56346e;
        Station station = stationUiModel != null ? new Station(stationUiModel.f56342b, stationUiModel.f56343c, stationUiModel.d, stationUiModel.f56344e) : null;
        Date date = trainUiModel.f56347f;
        StationUiModel stationUiModel2 = trainUiModel.g;
        return new Train(str4, str5, station, date, stationUiModel2 != null ? new Station(stationUiModel2.f56342b, stationUiModel2.f56343c, stationUiModel2.d, stationUiModel2.f56344e) : null, trainUiModel.f56348h, trainUiModel.f56349i, trainUiModel.f56350j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final TravelUiModel b(Travel travel) {
        travel.getClass();
        int i2 = WhenMappings.f56341a[travel.f67382b.ordinal()];
        if (i2 == 1) {
            Hotel hotel = (Hotel) travel;
            String str = hotel.f67365c;
            String str2 = hotel.d;
            HotelPlace hotelPlace = hotel.f67366e;
            return new HotelUiModel(str, str2, hotelPlace != null ? new HotelPlaceUiModel(hotelPlace.f67369a, hotelPlace.f67370b, hotelPlace.f67371c, hotelPlace.d) : null, hotel.f67367f, hotel.g, hotel.f67368h);
        }
        if (i2 == 2) {
            Flight flight = (Flight) travel;
            String str3 = flight.f67358c;
            FlightAirport flightAirport = flight.d;
            FlightAirportUiModel flightAirportUiModel = flightAirport != null ? new FlightAirportUiModel(flightAirport.f67361a, flightAirport.f67362b, flightAirport.f67363c, flightAirport.d, flightAirport.f67364e) : null;
            FlightAirport flightAirport2 = flight.f67359e;
            return new FlightUiModel(str3, flightAirportUiModel, flightAirport2 != null ? new FlightAirportUiModel(flightAirport2.f67361a, flightAirport2.f67362b, flightAirport2.f67363c, flightAirport2.d, flightAirport2.f67364e) : null, flight.f67360f, flight.g);
        }
        if (i2 != 3) {
            v40.g();
            return null;
        }
        Train train = (Train) travel;
        String str4 = train.f67375c;
        String str5 = train.d;
        Station station = train.f67376e;
        StationUiModel stationUiModel = station != null ? new StationUiModel(station.f67372a, station.f67373b, station.f67374c, station.d) : null;
        Date date = train.f67377f;
        Station station2 = train.g;
        return new TrainUiModel(str4, str5, stationUiModel, date, station2 != null ? new StationUiModel(station2.f67372a, station2.f67373b, station2.f67374c, station2.d) : null, train.f67378h, train.f67379i, train.f67380j);
    }
}
