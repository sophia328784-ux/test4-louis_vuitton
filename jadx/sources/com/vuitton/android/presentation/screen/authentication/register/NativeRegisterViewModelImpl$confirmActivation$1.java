package com.vuitton.android.presentation.screen.authentication.register;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.authentication.register.models.InvalidAddressScopeUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.InvalidNameScopeUiModel;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$confirmActivation$1", f = "NativeRegisterViewModelImpl.kt", l = {436, 440, 441, 445, 512}, m = "invokeSuspend", v = 2)
final class NativeRegisterViewModelImpl$confirmActivation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f53724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NativeRegisterViewModelImpl f53725c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f53726e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f53727f;
    public Iterator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f53728h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f53729i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f53730j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f53731k;
    public final /* synthetic */ NativeRegisterViewModelImpl l;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53732a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f53733b;

        static {
            int[] iArr = new int[InvalidAddressScopeUiModel.values().length];
            try {
                iArr[InvalidAddressScopeUiModel.ADDRESS1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InvalidAddressScopeUiModel.ADDRESS2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InvalidAddressScopeUiModel.ADDRESS3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InvalidAddressScopeUiModel.UNDEFINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f53732a = iArr;
            int[] iArr2 = new int[InvalidNameScopeUiModel.values().length];
            try {
                iArr2[InvalidNameScopeUiModel.FIRST_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[InvalidNameScopeUiModel.LAST_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[InvalidNameScopeUiModel.FIRST_NAME2.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[InvalidNameScopeUiModel.LAST_NAME2.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[InvalidNameScopeUiModel.UNDEFINED.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            f53733b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$confirmActivation$1(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
        super(2, continuation);
        this.l = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterViewModelImpl$confirmActivation$1(continuation, this.l);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterViewModelImpl$confirmActivation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x018d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0199  */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.Object, java.util.List, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x028e -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:121:0x0305 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:124:0x0311 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x0324 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:126:0x0334 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:131:0x0389 -> B:135:0x03b4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:133:0x038c -> B:135:0x03b4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:134:0x039a -> B:135:0x03b4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x01b7 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x01d3 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x01ef -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x020b -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x026d -> B:10:0x0032). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r26) {
        /*
            Method dump skipped, instruction units count: 1006
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$confirmActivation$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
