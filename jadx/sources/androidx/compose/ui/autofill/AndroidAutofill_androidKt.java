package androidx.compose.ui.autofill;

import android.view.ViewStructure;
import androidx.compose.ui.geometry.Rect;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidAutofill_androidKt {
    public static final void a(AndroidAutofill androidAutofill, ViewStructure viewStructure) {
        AutofillTree autofillTree = androidAutofill.f8626b;
        if (autofillTree.f8646a.isEmpty()) {
            return;
        }
        int iAddChildCount = viewStructure.addChildCount(autofillTree.f8646a.size());
        for (Map.Entry entry : autofillTree.f8646a.entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            AutofillNode autofillNode = (AutofillNode) entry.getValue();
            ViewStructure viewStructureNewChild = viewStructure.newChild(iAddChildCount);
            viewStructureNewChild.setAutofillId(androidAutofill.d, iIntValue);
            viewStructureNewChild.setId(iIntValue, androidAutofill.f8625a.getContext().getPackageName(), null, null);
            viewStructureNewChild.setAutofillType(((AndroidContentDataType) ContentDataType.Companion.f8647a).f8639a);
            List list = autofillNode.f8643a;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str = (String) AndroidAutofillType_androidKt.f8638a.get((AutofillType) list.get(i2));
                if (str == null) {
                    md.n("Unsupported autofill type");
                    return;
                }
                arrayList.add(str);
            }
            viewStructureNewChild.setAutofillHints((String[]) arrayList.toArray(new String[0]));
            Rect rect = autofillNode.f8644b;
            if (rect != null) {
                int iRound = Math.round(rect.f8811a);
                int iRound2 = Math.round(rect.f8812b);
                viewStructureNewChild.setDimens(iRound, iRound2, 0, 0, Math.round(rect.f8813c) - iRound, Math.round(rect.d) - iRound2);
            }
            iAddChildCount++;
        }
    }
}
