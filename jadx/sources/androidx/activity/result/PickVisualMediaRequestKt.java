package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {ActionFloatingViewItem.f37018a}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PickVisualMediaRequestKt {
    public static final PickVisualMediaRequest a(ActivityResultContracts$PickVisualMedia.VisualMediaType visualMediaType) {
        PickVisualMediaRequest.Builder builder = new PickVisualMediaRequest.Builder();
        builder.f758a = visualMediaType;
        return builder.a();
    }
}
