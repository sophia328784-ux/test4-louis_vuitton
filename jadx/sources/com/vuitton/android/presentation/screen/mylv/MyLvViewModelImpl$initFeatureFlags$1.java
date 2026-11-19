package com.vuitton.android.presentation.screen.mylv;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initFeatureFlags$1", f = "MyLvViewModelImpl.kt", l = {217, ModuleDescriptor.MODULE_VERSION, 220, 221, 222, 223, BERTags.FLAGS, 225, 226, 227, 229, 230}, m = "invokeSuspend", v = 2)
final class MyLvViewModelImpl$initFeatureFlags$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f59288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MyLvViewModelImpl f59289c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f59290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f59291f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f59292h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f59293i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f59294j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f59295k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public int s;
    public final /* synthetic */ MyLvViewModelImpl t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$initFeatureFlags$1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
        super(2, continuation);
        this.t = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyLvViewModelImpl$initFeatureFlags$1(continuation, this.t);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyLvViewModelImpl$initFeatureFlags$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0207  */
    /* JADX WARN: Code duplicated, block: B:27:0x022d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0246  */
    /* JADX WARN: Code duplicated, block: B:31:0x0248  */
    /* JADX WARN: Code duplicated, block: B:35:0x026c  */
    /* JADX WARN: Code duplicated, block: B:39:0x029f  */
    /* JADX WARN: Code duplicated, block: B:43:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:47:0x0310  */
    /* JADX WARN: Code duplicated, block: B:51:0x034f  */
    /* JADX WARN: Code duplicated, block: B:55:0x038d  */
    /* JADX WARN: Code duplicated, block: B:58:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:61:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:64:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:67:0x03f2 A[PHI: r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15
      0x03f2: PHI (r2v23 kotlin.coroutines.intrinsics.CoroutineSingletons) = (r2v41 kotlin.coroutines.intrinsics.CoroutineSingletons), (r2v42 kotlin.coroutines.intrinsics.CoroutineSingletons) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r3v17 boolean) = (r3v28 boolean), (r3v30 boolean) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r4v15 boolean) = (r4v21 boolean), (r4v23 boolean) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r5v16 boolean) = (r5v23 boolean), (r5v25 boolean) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r6v15 boolean) = (r6v25 boolean), (r6v27 boolean) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r7v15 int) = (r7v21 int), (r7v23 int) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r8v15 boolean) = (r8v21 boolean), (r8v23 boolean) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r9v16 boolean) = (r9v22 boolean), (r9v24 boolean) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r10v13 int) = (r10v19 int), (r10v21 int) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r11v14 int) = (r11v20 int), (r11v22 int) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r12v10 java.lang.Object) = (r12v16 java.lang.Object), (r12v18 java.lang.Object) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r13v8 com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl) = 
      (r13v14 com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl)
      (r13v16 com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl)
     binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r14v9 boolean) = (r14v16 boolean), (r14v18 boolean) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]
      0x03f2: PHI (r15v6 kotlinx.coroutines.flow.MutableStateFlow) = (r15v11 kotlinx.coroutines.flow.MutableStateFlow), (r15v12 kotlinx.coroutines.flow.MutableStateFlow) binds: [B:63:0x03de, B:66:0x03f0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:71:0x043b  */
    /* JADX WARN: Code duplicated, block: B:75:0x049e  */
    /* JADX WARN: Code duplicated, block: B:79:0x0505  */
    /* JADX WARN: Code duplicated, block: B:82:0x051c  */
    /* JADX WARN: Code duplicated, block: B:83:0x051f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0523  */
    /* JADX WARN: Code duplicated, block: B:86:0x0526  */
    /* JADX WARN: Code duplicated, block: B:89:0x0533  */
    /* JADX WARN: Code duplicated, block: B:91:0x0536  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0505 -> B:7:0x0049). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r32) {
        /*
            Method dump skipped, instruction units count: 1368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initFeatureFlags$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
