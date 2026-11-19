package defpackage;

import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w30 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f80746c;
    public final /* synthetic */ VideoCtaArticleSectionUiModel d;

    public /* synthetic */ w30(Function1 function1, VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel, int i2) {
        this.f80745b = i2;
        this.f80746c = function1;
        this.d = videoCtaArticleSectionUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80745b;
        VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel = this.d;
        Function1 function1 = this.f80746c;
        switch (i2) {
            case 0:
                function1.invoke(videoCtaArticleSectionUiModel);
                break;
            case 1:
                function1.invoke(videoCtaArticleSectionUiModel);
                break;
            default:
                function1.invoke(videoCtaArticleSectionUiModel);
                break;
        }
        return Unit.f71739a;
    }
}
