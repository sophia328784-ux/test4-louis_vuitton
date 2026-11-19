package com.vuitton.android.presentation.screen.cart;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$prepareOrder$1", f = "NativeCartViewModelImpl.kt", l = {733, 741, 746, 750, 754, 761, 763}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$prepareOrder$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public NativeCartViewModelImpl f54912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f54913c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f54914e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f54915f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f54916h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f54917i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f54918j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54919k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$prepareOrder$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.f54919k = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NativeCartViewModelImpl$prepareOrder$1 nativeCartViewModelImpl$prepareOrder$1 = new NativeCartViewModelImpl$prepareOrder$1(continuation, this.f54919k);
        nativeCartViewModelImpl$prepareOrder$1.f54918j = obj;
        return nativeCartViewModelImpl$prepareOrder$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$prepareOrder$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:56:0x011f A[Catch: all -> 0x01ed, TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:58:0x013a  */
    /* JADX WARN: Code duplicated, block: B:59:0x013c  */
    /* JADX WARN: Code duplicated, block: B:61:0x0140 A[Catch: all -> 0x01ed, PHI: r0 r7
      0x0140: PHI (r0v8 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl) = 
      (r0v2 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl)
      (r0v10 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl)
     binds: [B:55:0x011d, B:60:0x013e] A[DONT_GENERATE, DONT_INLINE]
      0x0140: PHI (r7v6 int) = (r7v3 int), (r7v7 int) binds: [B:55:0x011d, B:60:0x013e] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0159  */
    /* JADX WARN: Code duplicated, block: B:66:0x015b  */
    /* JADX WARN: Code duplicated, block: B:69:0x0165 A[Catch: all -> 0x01ed, TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0173 A[Catch: all -> 0x01ed, TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:73:0x018c  */
    /* JADX WARN: Code duplicated, block: B:74:0x018d A[Catch: all -> 0x01ed, TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0199 A[Catch: all -> 0x01ed, PHI: r0 r1 r3
      0x0199: PHI (r0v14 int) = (r0v12 int), (r0v12 int), (r0v12 int), (r0v16 int) binds: [B:68:0x0163, B:74:0x018d, B:72:0x018a, B:13:0x0042] A[DONT_GENERATE, DONT_INLINE]
      0x0199: PHI (r1v18 java.lang.Object) = (r1v16 java.lang.Object), (r1v16 java.lang.Object), (r1v16 java.lang.Object), (r1v23 java.lang.Object) binds: [B:68:0x0163, B:74:0x018d, B:72:0x018a, B:13:0x0042] A[DONT_GENERATE, DONT_INLINE]
      0x0199: PHI (r3v11 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl) = 
      (r3v9 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl)
      (r3v9 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl)
      (r3v9 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl)
      (r3v13 com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl)
     binds: [B:68:0x0163, B:74:0x018d, B:72:0x018a, B:13:0x0042] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01a1 A[Catch: all -> 0x01ed, TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:80:0x01be  */
    /* JADX WARN: Code duplicated, block: B:83:0x01c5 A[Catch: all -> 0x01ed, TryCatch #0 {all -> 0x01ed, blocks: (B:7:0x001e, B:88:0x01e1, B:89:0x01ea, B:10:0x002f, B:81:0x01c1, B:83:0x01c5, B:13:0x0042, B:75:0x0199, B:77:0x01a1, B:16:0x004b, B:67:0x015f, B:69:0x0165, B:71:0x0173, B:74:0x018d, B:20:0x005e, B:61:0x0140, B:63:0x0144, B:23:0x0071, B:54:0x0119, B:56:0x011f, B:33:0x00a6, B:35:0x00b7, B:37:0x00bb, B:39:0x00c5, B:41:0x00c9, B:42:0x00da, B:44:0x00e0, B:45:0x00ec, B:47:0x00f6, B:50:0x00fc, B:49:0x00fa), top: B:95:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01df  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
    
        if (r12.u(r0, r11) == r2) goto L85;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$prepareOrder$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
