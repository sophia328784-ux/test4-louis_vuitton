package defpackage;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.core.os.BundleKt;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.room.RoomDatabase;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import com.google.firebase.sessions.UuidGenerator;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.net.RetrofitFactory;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementBottomSheet;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl;
import com.vuitton.android.presentation.screen.portal.models.PortalUiModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import com.vuitton.android.presentation.screen.repairs.RepairActivity;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailBffFragment;
import com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment;
import com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.models.ServicesTrackingUiModel;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotObserver;
import com.vuitton.android.presentation.servicerecovery.RecoveryToolForService;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.concurrent.Callable;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ContextAwareKt;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import net.rtccloud.sdk.Rtcc;
import okhttp3.internal.ws.RealWebSocket;
import okhttp3.internal.ws.WebSocketWriter;
import okio.Buffer;
import okio.FileSystem;
import okio.Path;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;
import okio.internal.a;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xn0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81166c;

    public /* synthetic */ xn0(Object obj, int i2) {
        this.f81165b = i2;
        this.f81166c = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() throws IOException {
        int iY;
        int i2 = this.f81165b;
        int i3 = 0;
        Object obj = this.f81166c;
        switch (i2) {
            case 0:
                return tr.g("Cannot share personal selection: shareURL is null or blank for selectionId=", ((PersonalSelectionsInStoreViewModelImpl) obj).o);
            case 1:
                PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) obj;
                return ContextAwareKt.b(SerialDescriptorsKt.e("kotlinx.serialization.Polymorphic", PolymorphicKind.OPEN.f75536a, new SerialDescriptor[0], new xo0(polymorphicSerializer, i3)), polymorphicSerializer.f75517a);
            case 2:
                return Integer.valueOf(((PortalUiModel) obj).f63327e.size() + 1);
            case 3:
                return PowerManagementBottomSheet.V((PowerManagementBottomSheet) obj);
            case 4:
                PrivacyActivity privacyActivity = (PrivacyActivity) obj;
                PrivacyActivity.Companion companion = PrivacyActivity.s;
                LegalTextActivity.p.getClass();
                privacyActivity.startActivity(LegalTextActivity.Companion.a(privacyActivity, false));
                return Unit.f71739a;
            case 5:
                String string = ((UuidGenerator) obj).next().toString();
                string.getClass();
                return string;
            case 6:
                return RealWebSocket.writeOneFrame$lambda$0$0((RealWebSocket) obj);
            case 7:
                return RealWebSocket.finishReader$lambda$0$0((WebSocketWriter) obj);
            case 8:
                return RealWebSocket.failWebSocket$lambda$0$0((Ref$ObjectRef) obj);
            case 9:
                CoroutineDispatchers coroutineDispatchers = ((RecoveryToolForService) obj).f65804e;
                if (coroutineDispatchers != null) {
                    return CoroutineScopeKt.a(coroutineDispatchers.getF43531c());
                }
                Intrinsics.h("dispatcherProvider");
                throw null;
            case 10:
                NavKey[] navKeyArr = (NavKey[]) obj;
                return new NavBackStack((NavKey[]) Arrays.copyOf(navKeyArr, navKeyArr.length));
            case 11:
                RepairActivity.Companion companion2 = RepairActivity.t;
                return ((RepairActivity) obj).getIntent().getStringExtra("repair_route");
            case 12:
                return RepairDetailAddressBookFragment.O((RepairDetailAddressBookFragment) obj);
            case 13:
                return RepairDetailBffFragment.O((RepairDetailBffFragment) obj);
            case 14:
                return RepairDetailsFragment.P((RepairDetailsFragment) obj);
            case 15:
                ResourceFileSystem resourceFileSystem = (ResourceFileSystem) obj;
                ClassLoader classLoader = resourceFileSystem.d;
                FileSystem fileSystem = resourceFileSystem.f77481e;
                Enumeration<URL> resources = classLoader.getResources("");
                resources.getClass();
                ArrayList<URL> list = Collections.list(resources);
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (URL url : list) {
                    url.getClass();
                    Pair pair = !Intrinsics.c(url.getProtocol(), "file") ? null : new Pair(fileSystem, Path.Companion.b(Path.f77432c, new File(url.toURI())));
                    if (pair != null) {
                        arrayList.add(pair);
                    }
                }
                Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                resources2.getClass();
                ArrayList<URL> list2 = Collections.list(resources2);
                list2.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (URL url2 : list2) {
                    url2.getClass();
                    String string2 = url2.toString();
                    string2.getClass();
                    Pair pair2 = (StringsKt.P(string2, "jar:file:", false) && (iY = StringsKt.y(0, 6, string2, "!")) != -1) ? new Pair(ZipFilesKt.c(Path.Companion.b(Path.f77432c, new File(URI.create(string2.substring(4, iY)))), fileSystem, new a()), ResourceFileSystem.f77480h) : null;
                    if (pair2 != null) {
                        arrayList2.add(pair2);
                    }
                }
                return CollectionsKt.Y(arrayList, arrayList2);
            case 16:
                return Boolean.valueOf(((RetrofitFactory) obj).f46990i.a(new Feature[]{Feature.TWIST}));
            case 17:
                byte[] bArr = ReverseProtoWriter.f43475h;
                return new ProtoWriter((Buffer) ((ReverseProtoWriter) obj).f43480f.getF71699b());
            case 18:
                int i4 = RoomDatabase.m;
                return ((Callable) obj).call();
            case 19:
                int i5 = RoomDatabase.m;
                ((Runnable) obj).run();
                return Unit.f71739a;
            case 20:
                return ((Rtcc) obj).lambda$sendErrorReason$2();
            case 21:
                SavedStateRegistryController savedStateRegistryController = ((SaveableStateRegistryWrapper) obj).d;
                if (savedStateRegistryController == null) {
                    return null;
                }
                MapsKt.c();
                Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                savedStateRegistryController.b(bundleA);
                if (bundleA.isEmpty()) {
                    return null;
                }
                return bundleA;
            case 22:
                return SavedStateHandleSupport.c((ViewModelStoreOwner) obj);
            case 23:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) obj;
                savedStateRegistryOwner.getD().a(new Recreator(savedStateRegistryOwner));
                return Unit.f71739a;
            case 24:
                final ScreenshotObserver screenshotObserver = (ScreenshotObserver) obj;
                if (Build.VERSION.SDK_INT >= 34) {
                    return new Activity.ScreenCaptureCallback() { // from class: fu0
                        @Override // android.app.Activity.ScreenCaptureCallback
                        public final void onScreenCaptured() {
                            screenshotObserver.d.mo47invoke();
                        }
                    };
                }
                return null;
            case 25:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) obj;
                Transition transition = seekableTransitionState.f3923e;
                seekableTransitionState.f3924f = transition != null ? ((Number) transition.l.getF10755b()).longValue() : 0L;
                return Unit.f71739a;
            case 26:
                ((SensorDataManager) obj).b();
                return Unit.f71739a;
            case 27:
                return obj;
            case 28:
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) obj;
                return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(serialDescriptorImpl, serialDescriptorImpl.f75555k));
            default:
                ((ServicesViewModel) obj).L7(ServicesTrackingUiModel.OpenMyLVEvent.f64392a);
                return Unit.f71739a;
        }
    }
}
