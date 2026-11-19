package com.vuitton.core.infrastructure.data.forms.repository;

import com.vuitton.core.infrastructure.data.forms.datasource.CivilityDataSource;
import com.vuitton.core.infrastructure.data.forms.models.CivilityDto;
import com.vuitton.core.infrastructure.data.forms.models.CivilityType;
import com.vuitton.core.infrastructure.data.forms.models.DispatchCivilityDto;
import com.vuitton.foundation.model.domain.model.forms.Civility;
import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepositoryImpl;", "Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;", "Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;", "civilityDataSource", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;)V", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CivilityRepositoryImpl implements CivilityRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CivilityDataSource f66139a;

    @Inject
    public CivilityRepositoryImpl(CivilityDataSource civilityDataSource) {
        civilityDataSource.getClass();
        this.f66139a = civilityDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r8 == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        if (r8 == r1) goto L24;
     */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.CivilityRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r6, boolean r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getAddressCivilityMappingList$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getAddressCivilityMappingList$1 r0 = (com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getAddressCivilityMappingList$1) r0
            int r1 = r0.f66142e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f66142e = r1
            goto L18
        L13:
            com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getAddressCivilityMappingList$1 r0 = new com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getAddressCivilityMappingList$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f66141c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f66142e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2c
            java.lang.String r6 = r0.f66140b
            kotlin.ResultKt.b(r8)
            goto L5b
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L33:
            java.lang.String r6 = r0.f66140b
            kotlin.ResultKt.b(r8)
            goto L4b
        L39:
            kotlin.ResultKt.b(r8)
            if (r7 == 0) goto L4e
            com.vuitton.core.infrastructure.data.forms.models.CivilityType r7 = com.vuitton.core.infrastructure.data.forms.models.CivilityType.ADDRESS_TWIST
            r0.f66140b = r6
            r0.f66142e = r4
            java.io.Serializable r8 = r5.c(r7, r6, r0)
            if (r8 != r1) goto L4b
            goto L5a
        L4b:
            java.util.List r8 = (java.util.List) r8
            goto L5d
        L4e:
            com.vuitton.core.infrastructure.data.forms.models.CivilityType r7 = com.vuitton.core.infrastructure.data.forms.models.CivilityType.ADDRESS_ATG
            r0.f66140b = r6
            r0.f66142e = r3
            java.io.Serializable r8 = r5.c(r7, r6, r0)
            if (r8 != r1) goto L5b
        L5a:
            return r1
        L5b:
            java.util.List r8 = (java.util.List) r8
        L5d:
            if (r8 == 0) goto L62
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            return r8
        L62:
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            java.lang.Exception r5 = new java.lang.Exception
            java.lang.String r6 = com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode.a(r6)
            java.lang.String r7 = "Address civilities not found for country: "
            java.lang.String r6 = r7.concat(r6)
            r5.<init>(r6)
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl.a(java.lang.String, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r8 == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0058, code lost:
    
        if (r8 == r1) goto L24;
     */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.CivilityRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.String r6, boolean r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getProfileCivilityMappingList$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getProfileCivilityMappingList$1 r0 = (com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getProfileCivilityMappingList$1) r0
            int r1 = r0.f66148e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f66148e = r1
            goto L18
        L13:
            com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getProfileCivilityMappingList$1 r0 = new com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl$getProfileCivilityMappingList$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f66147c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f66148e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2c
            java.lang.String r6 = r0.f66146b
            kotlin.ResultKt.b(r8)
            goto L5b
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L33:
            java.lang.String r6 = r0.f66146b
            kotlin.ResultKt.b(r8)
            goto L4b
        L39:
            kotlin.ResultKt.b(r8)
            if (r7 == 0) goto L4e
            com.vuitton.core.infrastructure.data.forms.models.CivilityType r7 = com.vuitton.core.infrastructure.data.forms.models.CivilityType.PROFILE_TWIST
            r0.f66146b = r6
            r0.f66148e = r4
            java.io.Serializable r8 = r5.c(r7, r6, r0)
            if (r8 != r1) goto L4b
            goto L5a
        L4b:
            java.util.List r8 = (java.util.List) r8
            goto L5d
        L4e:
            com.vuitton.core.infrastructure.data.forms.models.CivilityType r7 = com.vuitton.core.infrastructure.data.forms.models.CivilityType.PROFILE_ATG
            r0.f66146b = r6
            r0.f66148e = r3
            java.io.Serializable r8 = r5.c(r7, r6, r0)
            if (r8 != r1) goto L5b
        L5a:
            return r1
        L5b:
            java.util.List r8 = (java.util.List) r8
        L5d:
            if (r8 == 0) goto L62
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            return r8
        L62:
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            java.lang.Exception r5 = new java.lang.Exception
            java.lang.String r6 = com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode.a(r6)
            java.lang.String r7 = "Profile civilities not found for country: "
            java.lang.String r6 = r7.concat(r6)
            r5.<init>(r6)
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.core.infrastructure.data.forms.repository.CivilityRepositoryImpl.b(java.lang.String, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Serializable c(CivilityType civilityType, String str, ContinuationImpl continuationImpl) throws Throwable {
        CivilityRepositoryImpl$getCivilityMappingList$1 civilityRepositoryImpl$getCivilityMappingList$1;
        Object objA;
        Object next;
        List list;
        if (continuationImpl instanceof CivilityRepositoryImpl$getCivilityMappingList$1) {
            civilityRepositoryImpl$getCivilityMappingList$1 = (CivilityRepositoryImpl$getCivilityMappingList$1) continuationImpl;
            int i2 = civilityRepositoryImpl$getCivilityMappingList$1.f66145e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                civilityRepositoryImpl$getCivilityMappingList$1.f66145e = i2 - Integer.MIN_VALUE;
            } else {
                civilityRepositoryImpl$getCivilityMappingList$1 = new CivilityRepositoryImpl$getCivilityMappingList$1(this, continuationImpl);
            }
        } else {
            civilityRepositoryImpl$getCivilityMappingList$1 = new CivilityRepositoryImpl$getCivilityMappingList$1(this, continuationImpl);
        }
        Object obj = civilityRepositoryImpl$getCivilityMappingList$1.f66144c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = civilityRepositoryImpl$getCivilityMappingList$1.f66145e;
        if (i3 == 0) {
            ResultKt.b(obj);
            civilityRepositoryImpl$getCivilityMappingList$1.f66143b = str;
            civilityRepositoryImpl$getCivilityMappingList$1.f66145e = 1;
            objA = this.f66139a.a(civilityType, civilityRepositoryImpl$getCivilityMappingList$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = civilityRepositoryImpl$getCivilityMappingList$1.f66143b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        if (Result.a(objA) == null) {
            Iterator it = ((List) objA).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((DispatchCivilityDto) next).f66051a, str));
            DispatchCivilityDto dispatchCivilityDto = (DispatchCivilityDto) next;
            if (dispatchCivilityDto != null && (list = dispatchCivilityDto.f66052b) != null) {
                List<CivilityDto> list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (CivilityDto civilityDto : list2) {
                    civilityDto.getClass();
                    arrayList.add(new Civility(civilityDto.f66038a, civilityDto.f66039b));
                }
                return arrayList;
            }
        }
        return null;
    }
}
