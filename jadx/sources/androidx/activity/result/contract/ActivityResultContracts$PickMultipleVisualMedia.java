package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.activity.result.PickVisualMediaRequest;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0016\u0018\u00002\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u000f\u0012\r\u0012\t\u0012\u00070\u0004¢\u0006\u0002\b\u00050\u00030\u0001:\u0001\nB\u0011\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"androidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia", "Landroidx/activity/result/contract/ActivityResultContract;", "Landroidx/activity/result/PickVisualMediaRequest;", "", "Landroid/net/Uri;", "Lkotlin/jvm/JvmSuppressWildcards;", "", "maxItems", "<init>", "(I)V", "Companion", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ActivityResultContracts$PickMultipleVisualMedia extends ActivityResultContract<PickVisualMediaRequest, List<Uri>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f766b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f767a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;", "", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static int a() {
            ActivityResultContracts$PickVisualMedia.f768a.getClass();
            if (ActivityResultContracts$PickVisualMedia.Companion.c()) {
                return MediaStore.getPickImagesMaxLimit();
            }
            return Integer.MAX_VALUE;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ActivityResultContracts$PickMultipleVisualMedia(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 1) != 0) {
            f766b.getClass();
            i2 = Companion.a();
        }
        this(i2);
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Intent a(Context context, Object obj) {
        PickVisualMediaRequest pickVisualMediaRequest = (PickVisualMediaRequest) obj;
        pickVisualMediaRequest.getClass();
        ActivityResultContracts$PickVisualMedia.f768a.getClass();
        boolean zC = ActivityResultContracts$PickVisualMedia.Companion.c();
        int i2 = this.f767a;
        if (zC) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(ActivityResultContracts$PickVisualMedia.Companion.b(pickVisualMediaRequest.f755a));
            int iMin = Math.min(i2, pickVisualMediaRequest.f756b);
            if (iMin <= 1 || iMin > MediaStore.getPickImagesMaxLimit()) {
                md.n("Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()");
                return null;
            }
            intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", iMin);
            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", pickVisualMediaRequest.f757c.a());
            intent.putExtra("android.provider.extra.PICK_IMAGES_IN_ORDER", false);
            return intent;
        }
        if (ActivityResultContracts$PickVisualMedia.Companion.a(context) == null) {
            Intent intent2 = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent2.setType(ActivityResultContracts$PickVisualMedia.Companion.b(pickVisualMediaRequest.f755a));
            intent2.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            if (intent2.getType() == null) {
                intent2.setType("*/*");
                intent2.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
            }
            return intent2;
        }
        ResolveInfo resolveInfoA = ActivityResultContracts$PickVisualMedia.Companion.a(context);
        if (resolveInfoA == null) {
            md.k("Required value was null.");
            return null;
        }
        ActivityInfo activityInfo = resolveInfoA.activityInfo;
        Intent intent3 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
        intent3.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
        intent3.setType(ActivityResultContracts$PickVisualMedia.Companion.b(pickVisualMediaRequest.f755a));
        int iMin2 = Math.min(i2, pickVisualMediaRequest.f756b);
        if (iMin2 <= 1) {
            md.n("Max items must be greater than 1");
            return null;
        }
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_MAX", iMin2);
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", pickVisualMediaRequest.f757c.a());
        intent3.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER", false);
        return intent3;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
        ((PickVisualMediaRequest) obj).getClass();
        return null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Object c(int i2, Intent intent) {
        if (i2 != -1) {
            intent = null;
        }
        if (intent != null) {
            ActivityResultContracts$GetMultipleContents.f765a.getClass();
            List listA = ActivityResultContracts$GetMultipleContents.Companion.a(intent);
            if (listA != null) {
                return listA;
            }
        }
        return EmptyList.f71768b;
    }

    public ActivityResultContracts$PickMultipleVisualMedia(int i2) {
        this.f767a = i2;
        if (i2 > 1) {
            return;
        }
        md.n("Max items must be higher than 1");
        throw null;
    }

    public ActivityResultContracts$PickMultipleVisualMedia() {
        this(0, 1, null);
    }
}
