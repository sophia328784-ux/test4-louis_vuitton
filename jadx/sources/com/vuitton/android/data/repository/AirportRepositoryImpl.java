package com.vuitton.android.data.repository;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.R;
import com.vuitton.android.data.api.connectivity.AirportApi;
import com.vuitton.android.data.datasource.connectivity.AirportLocalDataSource;
import com.vuitton.android.data.dto.travel.AirportDto;
import com.vuitton.android.data.exception.FileException;
import com.vuitton.android.domain.repository.AirportRepository;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Airport;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.ResponseBody;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/AirportRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AirportRepository;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;", "airportLocalDataSource", "Lcom/vuitton/android/data/api/connectivity/AirportApi;", "airportApi", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/data/datasource/connectivity/AirportLocalDataSource;Lcom/vuitton/android/data/api/connectivity/AirportApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AirportRepositoryImpl implements AirportRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f47207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AirportLocalDataSource f47208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AirportApi f47209c;

    @Inject
    public AirportRepositoryImpl(@ApplicationContext Context context, AirportLocalDataSource airportLocalDataSource, AirportApi airportApi) {
        context.getClass();
        airportLocalDataSource.getClass();
        airportApi.getClass();
        this.f47207a = context;
        this.f47208b = airportLocalDataSource;
        this.f47209c = airportApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.domain.repository.AirportRepository
    public final Object a(ContinuationImpl continuationImpl) throws FileException.CSVFileReadingException {
        AirportRepositoryImpl$getAirportList$1 airportRepositoryImpl$getAirportList$1;
        Object failure;
        HashMap map;
        Object obj;
        ArrayList<AirportDto> arrayList;
        ArrayList arrayList2;
        ResponseBody responseBody;
        InputStream inputStreamByteStream;
        if (continuationImpl instanceof AirportRepositoryImpl$getAirportList$1) {
            airportRepositoryImpl$getAirportList$1 = (AirportRepositoryImpl$getAirportList$1) continuationImpl;
            int i2 = airportRepositoryImpl$getAirportList$1.f47212e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                airportRepositoryImpl$getAirportList$1.f47212e = i2 - Integer.MIN_VALUE;
            } else {
                airportRepositoryImpl$getAirportList$1 = new AirportRepositoryImpl$getAirportList$1(this, continuationImpl);
            }
        } else {
            airportRepositoryImpl$getAirportList$1 = new AirportRepositoryImpl$getAirportList$1(this, continuationImpl);
        }
        Object obj2 = airportRepositoryImpl$getAirportList$1.f47211c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = airportRepositoryImpl$getAirportList$1.f47212e;
        AirportLocalDataSource airportLocalDataSource = this.f47208b;
        if (i3 == 0) {
            ResultKt.b(obj2);
            try {
                Result.Companion companion = Result.INSTANCE;
                HashMap map2 = new HashMap();
                InputStream inputStreamOpenRawResource = this.f47207a.getResources().openRawResource(R.raw.airport_countries);
                inputStreamOpenRawResource.getClass();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource));
                String line = bufferedReader.readLine();
                if (line != null) {
                    line = bufferedReader.readLine();
                }
                while (line != null) {
                    List listSplit$default = StringsKt__StringsKt.split$default(line, new String[]{","}, false, 0, 6, null);
                    map2.put(listSplit$default.get(1), listSplit$default.get(0));
                    line = bufferedReader.readLine();
                }
                bufferedReader.close();
                failure = map2;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                String message = thA.getMessage();
                throw new FileException.CSVFileReadingException(message != null ? message : "");
            }
            HashMap map3 = (HashMap) failure;
            Collection collection = airportLocalDataSource.f44052a;
            if (collection == null) {
                collection = EmptyList.f71768b;
            }
            Collection collection2 = collection;
            boolean zIsEmpty = collection2.isEmpty();
            obj = collection2;
            if (zIsEmpty) {
                airportRepositoryImpl$getAirportList$1.f47210b = map3;
                airportRepositoryImpl$getAirportList$1.f47212e = 1;
                Object airportList = this.f47209c.getAirportList(airportRepositoryImpl$getAirportList$1);
                if (airportList == coroutineSingletons) {
                    return coroutineSingletons;
                }
                map = map3;
                obj2 = airportList;
            }
            return obj;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        map = airportRepositoryImpl$getAirportList$1.f47210b;
        ResultKt.b(obj2);
        Response response = (Response) obj2;
        if (!response.f79449a.r || (responseBody = (ResponseBody) response.f79450b) == null || (inputStreamByteStream = responseBody.byteStream()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStreamByteStream));
                String line2 = bufferedReader2.readLine();
                if (line2 != null) {
                    line2 = bufferedReader2.readLine();
                }
                while (line2 != null) {
                    List listSplit$default2 = StringsKt__StringsKt.split$default(line2, new String[]{","}, false, 0, 6, null);
                    arrayList.add(new AirportDto((String) listSplit$default2.get(0), (String) listSplit$default2.get(1), (String) listSplit$default2.get(2), (String) listSplit$default2.get(3), (String) listSplit$default2.get(4), (String) listSplit$default2.get(5), Float.parseFloat((String) listSplit$default2.get(6)), Float.parseFloat((String) listSplit$default2.get(7))));
                    line2 = bufferedReader2.readLine();
                }
                bufferedReader2.close();
            } catch (IOException e2) {
                String message2 = e2.getMessage();
                throw new FileException.CSVFileReadingException(message2 != null ? message2 : "");
            }
        }
        if (arrayList != null) {
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList, 10));
            for (AirportDto airportDto : arrayList) {
                airportDto.getClass();
                map.getClass();
                String str = airportDto.f46892a;
                String str2 = airportDto.f46893b;
                String str3 = airportDto.f46894c;
                String str4 = (String) map.get(airportDto.f46895e);
                arrayList3.add(new Airport(str, str2, str3, str4 == null ? "" : str4, airportDto.f46896f));
            }
            arrayList2 = arrayList3;
        } else {
            arrayList2 = null;
        }
        if (arrayList2 == null) {
            md.k("Airport webservice returns empty body");
            return null;
        }
        airportLocalDataSource.getClass();
        airportLocalDataSource.f44052a = arrayList2;
        obj = arrayList2;
        return obj;
    }
}
