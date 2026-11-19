package com.vuitton.android.presentation.screen.feed;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$getFeatureFlags$1", f = "FeedViewModelImpl.kt", l = {313, 319, DilithiumEngine.DilithiumPolyT1PackedBytes, 321, 322, 323}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$getFeatureFlags$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f57660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FeedViewModelImpl f57661c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f57663f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f57664h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f57665i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f57666j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f57667k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;
    public final /* synthetic */ FeedViewModelImpl p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$getFeatureFlags$1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.p = feedViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$getFeatureFlags$1(this.p, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$getFeatureFlags$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0109  */
    /* JADX WARN: Code duplicated, block: B:20:0x0122  */
    /* JADX WARN: Code duplicated, block: B:24:0x012d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0152  */
    /* JADX WARN: Code duplicated, block: B:32:0x0184  */
    /* JADX WARN: Code duplicated, block: B:36:0x01be  */
    /* JADX WARN: Code duplicated, block: B:40:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:44:0x0238  */
    /* JADX WARN: Code duplicated, block: B:47:0x0246  */
    /* JADX WARN: Code duplicated, block: B:48:0x0249  */
    /* JADX WARN: Code duplicated, block: B:50:0x024d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0250  */
    /* JADX WARN: Code duplicated, block: B:54:0x0261  */
    /* JADX WARN: Code duplicated, block: B:56:0x0264  */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0238 -> B:7:0x0033). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r29) {
        /*
            Method dump skipped, instruction units count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$getFeatureFlags$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
