package defpackage;

import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g3 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Set f69262c;

    public /* synthetic */ g3(int i2, Set set) {
        this.f69261b = i2;
        this.f69262c = set;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zContains;
        int i2 = this.f69261b;
        Set set = this.f69262c;
        FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
        switch (i2) {
            case 0:
                formFieldGenericUiModel.getClass();
                zContains = set.contains(formFieldGenericUiModel.getF57490b());
                break;
            case 1:
                formFieldGenericUiModel.getClass();
                zContains = set.contains(formFieldGenericUiModel.getF57490b());
                break;
            case 2:
                formFieldGenericUiModel.getClass();
                zContains = !set.contains(formFieldGenericUiModel.getF57490b());
                break;
            case 3:
                zContains = set.contains(formFieldGenericUiModel.getF57490b());
                break;
            case 4:
                formFieldGenericUiModel.getClass();
                zContains = set.contains(formFieldGenericUiModel.getF57490b());
                break;
            case 5:
                formFieldGenericUiModel.getClass();
                zContains = set.contains(formFieldGenericUiModel.getF57490b());
                break;
            case 6:
                formFieldGenericUiModel.getClass();
                zContains = set.contains(formFieldGenericUiModel.getF57490b());
                break;
            default:
                formFieldGenericUiModel.getClass();
                zContains = set.contains(formFieldGenericUiModel.getF57490b());
                break;
        }
        return Boolean.valueOf(zContains);
    }
}
