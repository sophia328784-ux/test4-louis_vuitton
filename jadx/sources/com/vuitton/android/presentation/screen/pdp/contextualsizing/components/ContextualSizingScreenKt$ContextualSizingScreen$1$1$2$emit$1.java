package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingScreenKt$ContextualSizingScreen$1$1$2", f = "ContextualSizingScreen.kt", l = {EACTags.APPLICATION_IMAGE}, m = "emit", v = 2)
final class ContextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f61495c;
    public final /* synthetic */ ContextualSizingScreenKt$ContextualSizingScreen$1$1.AnonymousClass2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61496e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextualSizingScreenKt$ContextualSizingScreen$1$1$2$emit$1(ContextualSizingScreenKt$ContextualSizingScreen$1$1.AnonymousClass2 anonymousClass2, Continuation continuation) {
        super(continuation);
        this.d = anonymousClass2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61495c = obj;
        this.f61496e |= Integer.MIN_VALUE;
        return this.d.b(0, this);
    }
}
