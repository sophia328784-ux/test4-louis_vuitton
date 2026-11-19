package defpackage;

import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusRequester;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xk0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FocusRequester f81149c;

    public /* synthetic */ xk0(FocusRequester focusRequester, int i2) {
        this.f81148b = i2;
        this.f81149c = focusRequester;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81148b;
        FocusRequester focusRequester = this.f81149c;
        FocusProperties focusProperties = (FocusProperties) obj;
        switch (i2) {
            case 0:
                focusProperties.getClass();
                focusProperties.g(focusRequester);
                break;
            case 1:
                focusProperties.getClass();
                focusProperties.f(focusRequester);
                break;
            default:
                focusProperties.getClass();
                focusProperties.a(focusRequester);
                break;
        }
        return Unit.f71739a;
    }
}
