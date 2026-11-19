package com.vuitton.android.presentation.screen.certificates.components;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import com.vuitton.android.R;
import com.vuitton.android.core.extensions.SerializationExtKt;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.core.utils.FormatHelper;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Country;
import defpackage.tr;
import defpackage.zy0;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.components.CertificateFormField$PhoneNumberContent$1$1$1", f = "CertificateFormField.kt", l = {}, m = "invokeSuspend", v = 2)
final class CertificateFormField$PhoneNumberContent$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CertificateFormField f55669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f55670c;
    public final /* synthetic */ InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f55671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f55672f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f55673h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateFormField$PhoneNumberContent$1$1$1(CertificateFormField certificateFormField, Context context, InAppDispatch inAppDispatch, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, Continuation continuation) {
        super(2, continuation);
        this.f55669b = certificateFormField;
        this.f55670c = context;
        this.d = inAppDispatch;
        this.f55671e = mutableState;
        this.f55672f = mutableState2;
        this.g = mutableState3;
        this.f55673h = mutableState4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateFormField$PhoneNumberContent$1$1$1(this.f55669b, this.f55670c, this.d, this.f55671e, this.f55672f, this.g, this.f55673h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateFormField$PhoneNumberContent$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        Object obj2;
        Country country;
        Object next;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f55669b.f55667j;
        Json json = JsonProviderKt.f43520a;
        Regex regex = CertificateFormField.l;
        InputStream inputStreamOpenRawResource = this.f55670c.getResources().openRawResource(R.raw.countries);
        inputStreamOpenRawResource.getClass();
        String strA = SerializationExtKt.a(inputStreamOpenRawResource);
        json.getClass();
        Iterable iterable = (Iterable) json.b(new ArrayListSerializer(Country.INSTANCE.serializer()), strA);
        ArrayList arrayList = new ArrayList();
        for (Object obj3 : iterable) {
            if (((Country) obj3).f68162c != null) {
                arrayList.add(obj3);
            }
        }
        List listO0 = CollectionsKt.o0(arrayList, new Comparator() { // from class: com.vuitton.android.presentation.screen.certificates.components.CertificateFormField$getCountries$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj4, Object obj5) {
                return Integer.valueOf(FormatHelper.a(((Country) obj4).f68162c)).compareTo(Integer.valueOf(FormatHelper.a(((Country) obj5).f68162c)));
            }
        });
        MutableState mutableState2 = this.f55671e;
        mutableState2.setValue(listO0);
        ((SnapshotMutableStateImpl) mutableState).setValue(this.d.f67483j);
        Iterator it = ((List) mutableState2.getF10755b()).iterator();
        do {
            obj2 = null;
            if (!it.hasNext()) {
                zy0.c("Collection contains no element matching the predicate.");
                return null;
            }
            country = (Country) it.next();
            if (Intrinsics.c(country.f68160a, (String) ((SnapshotMutableStateImpl) mutableState).getF10755b())) {
                break;
            }
        } while (!Intrinsics.c(country.f68162c, (String) ((SnapshotMutableStateImpl) mutableState).getF10755b()));
        Iterator it2 = ((List) mutableState2.getF10755b()).iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!Intrinsics.c((Country) next, country));
        MutableState mutableState3 = this.f55672f;
        mutableState3.setValue((Country) next);
        List<Country> list = (List) mutableState2.getF10755b();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
        for (Country country2 : list) {
            String strH = tr.h(country2.f68162c, " ", country2.f68161b);
            String str = country2.f68162c;
            if (str == null) {
                str = "";
            }
            arrayList2.add(new ListPickerItem(strH, false, str, 2, null));
        }
        MutableState mutableState4 = this.g;
        mutableState4.setValue(arrayList2);
        for (Object obj4 : (List) mutableState4.getF10755b()) {
            String str2 = ((ListPickerItem) obj4).f51015c;
            Country country3 = (Country) mutableState3.getF10755b();
            if (Intrinsics.c(str2, country3 != null ? country3.f68162c : null)) {
                obj2 = obj4;
                break;
            }
        }
        this.f55673h.setValue((ListPickerItem) obj2);
        return Unit.f71739a;
    }
}
