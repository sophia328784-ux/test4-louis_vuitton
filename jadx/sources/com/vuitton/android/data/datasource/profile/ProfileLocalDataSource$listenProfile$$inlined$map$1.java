package com.vuitton.android.data.datasource.profile;

import androidx.datastore.preferences.core.Preferences;
import com.vuitton.android.data.database.entity.profile.ProfileEntity;
import com.vuitton.android.data.dto.profile.ProfileMapperKt;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.a;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProfileLocalDataSource$listenProfile$$inlined$map$1 implements Flow<Profile> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Flow f44250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProfileLocalDataSource f44251c;

    /* JADX INFO: renamed from: com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$listenProfile$$inlined$map$1$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public final class AnonymousClass2<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ FlowCollector f44252b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ProfileLocalDataSource f44253c;

        /* JADX INFO: renamed from: com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$listenProfile$$inlined$map$1$2$1, reason: invalid class name */
        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$listenProfile$$inlined$map$1$2", f = "ProfileLocalDataSource.kt", l = {217}, m = "emit", v = 2)
        public final class AnonymousClass1 extends ContinuationImpl {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f44254b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f44255c;

            public AnonymousClass1(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.f44254b = obj;
                this.f44255c |= Integer.MIN_VALUE;
                return AnonymousClass2.this.emit(null, this);
            }
        }

        public AnonymousClass2(FlowCollector flowCollector, ProfileLocalDataSource profileLocalDataSource) {
            this.f44252b = flowCollector;
            this.f44253c = profileLocalDataSource;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1;
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i2 = anonymousClass1.f44255c;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.f44255c = i2 - Integer.MIN_VALUE;
                } else {
                    anonymousClass1 = new AnonymousClass1(continuation);
                }
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
            Object obj2 = anonymousClass1.f44254b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = anonymousClass1.f44255c;
            Profile profileB = null;
            if (i3 == 0) {
                ResultKt.b(obj2);
                String str = (String) ((Preferences) obj).b(ProfileLocalDataSource.f44237e);
                ProfileLocalDataSource profileLocalDataSource = this.f44253c;
                if (str != null) {
                    try {
                        profileB = ProfileMapperKt.b((ProfileEntity) profileLocalDataSource.f44239b.b(ProfileEntity.INSTANCE.serializer(), str));
                    } catch (Exception e2) {
                        a.y("Error deserializing profile: ", e2.getMessage(), profileLocalDataSource.d, "ProfileLocalDataSource", null);
                    }
                } else {
                    profileLocalDataSource.d.getClass();
                }
                anonymousClass1.f44255c = 1;
                if (this.f44252b.emit(profileB, anonymousClass1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj2);
            }
            return Unit.f71739a;
        }
    }

    public ProfileLocalDataSource$listenProfile$$inlined$map$1(Flow flow, ProfileLocalDataSource profileLocalDataSource) {
        this.f44250b = flow;
        this.f44251c = profileLocalDataSource;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object f(FlowCollector flowCollector, Continuation continuation) {
        Object objF = this.f44250b.f(new AnonymousClass2(flowCollector, this.f44251c), continuation);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }
}
