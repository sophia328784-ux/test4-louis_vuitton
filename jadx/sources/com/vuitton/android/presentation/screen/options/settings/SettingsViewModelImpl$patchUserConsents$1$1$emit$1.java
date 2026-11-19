package com.vuitton.android.presentation.screen.options.settings;

import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$patchUserConsents$1$1", f = "SettingsViewModelImpl.kt", l = {182, 194}, m = "emit", v = 2)
final class SettingsViewModelImpl$patchUserConsents$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MarketingUserConsentsUiModel f60011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f60012c;
    public SettingsViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f60013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SettingsViewModelImpl$patchUserConsents$1.AnonymousClass1 f60014f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsViewModelImpl$patchUserConsents$1$1$emit$1(SettingsViewModelImpl$patchUserConsents$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f60014f = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60013e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f60014f.emit(null, this);
    }
}
