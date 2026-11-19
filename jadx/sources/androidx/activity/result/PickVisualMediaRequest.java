package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts$PickMultipleVisualMedia;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/activity/result/PickVisualMediaRequest;", "", "<init>", "()V", "Builder", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PickVisualMediaRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActivityResultContracts$PickVisualMedia.VisualMediaType f755a = ActivityResultContracts$PickVisualMedia.ImageAndVideo.f771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActivityResultContracts$PickVisualMedia.DefaultTab f757c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/activity/result/PickVisualMediaRequest$Builder;", "", "<init>", "()V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ActivityResultContracts$PickVisualMedia.VisualMediaType f758a = ActivityResultContracts$PickVisualMedia.ImageAndVideo.f771a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f759b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ActivityResultContracts$PickVisualMedia.DefaultTab f760c;

        public Builder() {
            ActivityResultContracts$PickMultipleVisualMedia.f766b.getClass();
            this.f759b = ActivityResultContracts$PickMultipleVisualMedia.Companion.a();
            this.f760c = ActivityResultContracts$PickVisualMedia.DefaultTab.PhotosTab.f769a;
        }

        public final PickVisualMediaRequest a() {
            PickVisualMediaRequest pickVisualMediaRequest = new PickVisualMediaRequest();
            pickVisualMediaRequest.f755a = this.f758a;
            pickVisualMediaRequest.f756b = this.f759b;
            ActivityResultContracts$PickVisualMedia.DefaultTab defaultTab = this.f760c;
            defaultTab.getClass();
            pickVisualMediaRequest.f757c = defaultTab;
            return pickVisualMediaRequest;
        }
    }

    public PickVisualMediaRequest() {
        ActivityResultContracts$PickMultipleVisualMedia.f766b.getClass();
        this.f756b = ActivityResultContracts$PickMultipleVisualMedia.Companion.a();
        this.f757c = ActivityResultContracts$PickVisualMedia.DefaultTab.PhotosTab.f769a;
    }
}
