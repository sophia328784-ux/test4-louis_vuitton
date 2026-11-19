package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h4 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f40200c;
    public final /* synthetic */ String d;

    public /* synthetic */ h4(String str, String str2, int i2) {
        this.f40199b = i2;
        this.f40200c = str;
        this.d = str2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        switch (this.f40199b) {
            case 0:
                return new SkinCareSurveyForm.Question((SkinCareSurveyForm.Page.Element) obj, this.f40200c, this.d);
            default:
                return new SkinCareSurveyForm.Option((SkinCareSurveyForm.Page.Element.Option) obj, this.f40200c, this.d);
        }
    }
}
