package com.batch.android.messaging.view.styled.mep;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
import com.batch.android.o0.b;
import com.batch.android.s0.c;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AppCompatButton implements c {
    public a(Context context) {
        super(context);
    }

    @Override // com.batch.android.s0.c
    public void a(Map<String, String> map) {
        Float fA;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("elevation".equalsIgnoreCase(entry.getKey()) && (fA = b.a(entry.getValue())) != null && fA.floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                setStateListAnimator(null);
            }
        }
        TextView.a(this, map);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
