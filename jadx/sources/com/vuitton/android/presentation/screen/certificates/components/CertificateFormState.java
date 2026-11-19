package com.vuitton.android.presentation.screen.certificates.components;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateFormState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List f55684a = EmptyList.f71768b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f55685b = SnapshotStateKt.g(Boolean.FALSE);

    public final LinkedHashMap a() {
        List<CertificateFormField> list = this.f55684a;
        int iG = MapsKt.g(CollectionsKt.t(list, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
        for (CertificateFormField certificateFormField : list) {
            Pair pair = new Pair(certificateFormField.f55660a, certificateFormField.f());
            linkedHashMap.put(pair.f71705b, pair.f71706c);
        }
        return linkedHashMap;
    }

    public final boolean b() {
        boolean z;
        Iterator it = this.f55684a.iterator();
        while (it.hasNext()) {
            if (!((CertificateFormField) it.next()).g()) {
                z = false;
                ((SnapshotMutableStateImpl) this.f55685b).setValue(Boolean.valueOf(z));
                return z;
            }
        }
        z = true;
        ((SnapshotMutableStateImpl) this.f55685b).setValue(Boolean.valueOf(z));
        return z;
    }
}
