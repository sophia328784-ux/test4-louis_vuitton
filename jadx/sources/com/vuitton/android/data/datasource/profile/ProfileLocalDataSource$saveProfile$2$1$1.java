package com.vuitton.android.data.datasource.profile;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.vuitton.android.data.database.entity.address.AddressEntity;
import com.vuitton.android.data.database.entity.profile.PhoneNumberEntity;
import com.vuitton.android.data.database.entity.profile.ProfileEntity;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.PhoneNumberType;
import com.vuitton.foundation.model.domain.model.profile.Address;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import java.util.ArrayList;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$saveProfile$2$1$1", f = "ProfileLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class ProfileLocalDataSource$saveProfile$2$1$1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProfileLocalDataSource f44261c;
    public final /* synthetic */ Profile d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileLocalDataSource$saveProfile$2$1$1(ProfileLocalDataSource profileLocalDataSource, Profile profile, Continuation continuation) {
        super(2, continuation);
        this.f44261c = profileLocalDataSource;
        this.d = profile;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ProfileLocalDataSource$saveProfile$2$1$1 profileLocalDataSource$saveProfile$2$1$1 = new ProfileLocalDataSource$saveProfile$2$1$1(this.f44261c, this.d, continuation);
        profileLocalDataSource$saveProfile$2$1$1.f44260b = obj;
        return profileLocalDataSource$saveProfile$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProfileLocalDataSource$saveProfile$2$1$1) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String value;
        MutablePreferences mutablePreferences = (MutablePreferences) this.f44260b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Preferences.Key key = ProfileLocalDataSource.f44237e;
        Json json = this.f44261c.f44239b;
        KSerializer<ProfileEntity> kSerializerSerializer = ProfileEntity.INSTANCE.serializer();
        Profile profile = this.d;
        profile.getClass();
        Profile.Id id = profile.f68164a;
        String f68177a = id.getF68177a();
        String str = id instanceof Profile.Id.AtgId ? "atg" : id instanceof Profile.Id.SalesforceId ? "salesforce" : "";
        String str2 = profile.f68165b;
        String str3 = profile.f68166c;
        String str4 = profile.d;
        String str5 = profile.f68167e;
        String str6 = profile.f68168f;
        String str7 = profile.g;
        String str8 = profile.f68169h;
        String str9 = profile.f68171j;
        String str10 = profile.f68172k;
        String str11 = profile.n;
        PhoneNumberEntity phoneNumberEntity = null;
        String str12 = str11 == null ? null : str11;
        String str13 = profile.m;
        String str14 = str13 == null ? null : str13;
        String str15 = profile.l;
        String str16 = str15 == null ? null : str15;
        Boolean bool = profile.o;
        List list = profile.f68170i;
        list.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (Iterator it = r5.iterator(); it.hasNext(); it = it) {
            Address address = (Address) it.next();
            address.getClass();
            arrayList.add(new AddressEntity(address.f68151a, address.f68152b, address.f68153c, address.d, address.f68154e, address.f68155f, address.g, address.f68156h, address.f68157i, address.f68158j, address.f68159k, address.l, address.m, address.n, address.o, address.p, address.q, address.r, address.s, address.t, (String) null, address.v, address.w, address.x, address.y, address.z, address.A, address.B, address.C, address.D, address.E, address.F, address.G, address.H, address.I, address.J, address.K, 1048576, 0, (DefaultConstructorMarker) null));
        }
        PhoneNumber phoneNumber = profile.q;
        if (phoneNumber != null) {
            String str17 = phoneNumber.f66232a;
            String value2 = phoneNumber.f66233b.getValue();
            PhoneNumberType phoneNumberType = PhoneNumberType.MOBILE;
            if (Intrinsics.c(value2, phoneNumberType.getValue())) {
                value = phoneNumberType.getValue();
            } else {
                PhoneNumberType phoneNumberType2 = PhoneNumberType.HOME;
                if (Intrinsics.c(value2, phoneNumberType2.getValue())) {
                    value = phoneNumberType2.getValue();
                } else {
                    PhoneNumberType phoneNumberType3 = PhoneNumberType.WORK;
                    value = Intrinsics.c(value2, phoneNumberType3.getValue()) ? phoneNumberType3.getValue() : PhoneNumberType.UNKNOWN.getValue();
                }
            }
            phoneNumberEntity = new PhoneNumberEntity(str17, value, phoneNumber.f66234c);
        }
        mutablePreferences.e(key, json.c(kSerializerSerializer, new ProfileEntity(f68177a, str, str2, str3, str4, str5, str6, str7, str8, arrayList, str9, str10, str16, str14, str12, bool, phoneNumberEntity, profile.r, profile.s)));
        return Unit.f71739a;
    }
}
