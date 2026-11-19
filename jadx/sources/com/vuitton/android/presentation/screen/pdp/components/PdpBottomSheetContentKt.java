package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpBottomSheetContentKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f61369b;

        static {
            int[] iArr = new int[ContactUsMode.values().length];
            try {
                iArr[ContactUsMode.DISTANT_CARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f61368a = iArr;
            int[] iArr2 = new int[CustomizationType.values().length];
            try {
                iArr2[CustomizationType.HOTSTAMPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[CustomizationType.PERFUME_ENGRAVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            f61369b = iArr2;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 30211. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public static final void a(com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel r45, boolean r46, com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r47, com.vuitton.android.presentation.contact.models.ContactUsUiModel r48, java.lang.String r49, com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType r50, boolean r51, boolean r52, com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel r53, kotlin.jvm.functions.Function0 r54, kotlin.jvm.functions.Function0 r55, kotlin.jvm.functions.Function0 r56, kotlin.jvm.functions.Function1 r57, kotlin.jvm.functions.Function0 r58, kotlin.jvm.functions.Function0 r59, kotlin.jvm.functions.Function0 r60, kotlin.jvm.functions.Function0 r61, kotlin.jvm.functions.Function0 r62, kotlin.jvm.functions.Function1 r63, kotlin.jvm.functions.Function0 r64, kotlin.jvm.functions.Function0 r65, kotlin.jvm.functions.Function1 r66, kotlin.jvm.functions.Function1 r67, kotlin.jvm.functions.Function1 r68, kotlin.jvm.functions.Function1 r69, kotlin.jvm.functions.Function2 r70, kotlin.jvm.functions.Function2 r71, kotlin.jvm.functions.Function1 r72, kotlin.jvm.functions.Function1 r73, androidx.compose.runtime.Composer r74, int r75) {
        /*
            Method dump skipped, instruction units count: 3021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetContentKt.a(com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel, boolean, com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch, com.vuitton.android.presentation.contact.models.ContactUsUiModel, java.lang.String, com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType, boolean, boolean, com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int):void");
    }
}
