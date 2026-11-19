package com.vuitton.android.presentation.screen.authentication.social;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.authentication.register.models.InvalidNameScopeUiModel;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$onConfirmClicked$1", f = "SocialRegisterViewModelImpl.kt", l = {397, 401, 410, 411, 429, 455, 460}, m = "invokeSuspend", v = 2)
final class SocialRegisterViewModelImpl$onConfirmClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f54111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SocialRegisterViewModelImpl f54112c;
    public SocialAuthMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Iterator f54113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f54114f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f54115h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SocialRegisterViewModelImpl f54116i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SocialAuthMode f54117j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f54118k;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54119a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f54120b;

        static {
            int[] iArr = new int[SocialAuthMode.values().length];
            try {
                iArr[SocialAuthMode.GOOGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SocialAuthMode.LINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SocialAuthMode.KAKAO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f54119a = iArr;
            int[] iArr2 = new int[InvalidNameScopeUiModel.values().length];
            try {
                iArr2[InvalidNameScopeUiModel.FIRST_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[InvalidNameScopeUiModel.FIRST_NAME2.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[InvalidNameScopeUiModel.LAST_NAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[InvalidNameScopeUiModel.LAST_NAME2.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            f54120b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialRegisterViewModelImpl$onConfirmClicked$1(SocialRegisterViewModelImpl socialRegisterViewModelImpl, SocialAuthMode socialAuthMode, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f54116i = socialRegisterViewModelImpl;
        this.f54117j = socialAuthMode;
        this.f54118k = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SocialRegisterViewModelImpl$onConfirmClicked$1(this.f54116i, this.f54117j, this.f54118k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SocialRegisterViewModelImpl$onConfirmClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0223  */
    /* JADX WARN: Code duplicated, block: B:52:0x0248  */
    /* JADX WARN: Code duplicated, block: B:56:0x0254  */
    /* JADX WARN: Code duplicated, block: B:58:0x0266 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:64:0x027c  */
    /* JADX WARN: Code duplicated, block: B:69:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:77:0x0250 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x02cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x02ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x022d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0290 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11, types: [com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl, com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x02ad -> B:70:0x02b2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:77:0x0250
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r38) {
        /*
            Method dump skipped, instruction units count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$onConfirmClicked$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
