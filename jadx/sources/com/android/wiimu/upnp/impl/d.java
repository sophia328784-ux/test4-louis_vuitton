package com.android.wiimu.upnp.impl;

import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.IWiimuPlayQueue;
import com.linkplay.core.nas.DIDLContentScanner;
import com.linkplay.core.nas.LPMediaServerPlayItem;
import com.linkplay.core.nas.LPMediaServerResultListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.teleal.cling.model.ContentItem;
import org.teleal.cling.model.action.ActionArgumentValue;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.contentdirectory.ui.ContentBrowseActionCallbackImpl;
import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.playqueue.callback.AppendTracksInQueue;
import org.teleal.cling.support.playqueue.callback.AppendTracksInQueueEx;
import org.teleal.cling.support.playqueue.callback.BackUpQueue;
import org.teleal.cling.support.playqueue.callback.BrowseQueueUSBDisk;
import org.teleal.cling.support.playqueue.callback.CreateQueue;
import org.teleal.cling.support.playqueue.callback.DeleteQueue;
import org.teleal.cling.support.playqueue.callback.GetQueueIndex;
import org.teleal.cling.support.playqueue.callback.GetQueueLoopMode;
import org.teleal.cling.support.playqueue.callback.GetQueueOnline;
import org.teleal.cling.support.playqueue.callback.GetUserFavoritesTask;
import org.teleal.cling.support.playqueue.callback.GetUserInfoTask;
import org.teleal.cling.support.playqueue.callback.GetUserLoginTask;
import org.teleal.cling.support.playqueue.callback.GetUserLogoutTask;
import org.teleal.cling.support.playqueue.callback.PlayQueueWithIndex;
import org.teleal.cling.support.playqueue.callback.RemoveTracksInQueue;
import org.teleal.cling.support.playqueue.callback.ReplaceQueue;
import org.teleal.cling.support.playqueue.callback.SearchQueueOnline;
import org.teleal.cling.support.playqueue.callback.SetQueueLoopMode;
import org.teleal.cling.support.playqueue.callback.SetQueueRecord;
import org.teleal.cling.support.playqueue.callback.SetSongsRecord;
import org.teleal.cling.support.playqueue.callback.UserRegister;
import org.teleal.cling.support.playqueue.callback.browsequeue.BrowseQueue;
import org.teleal.cling.support.playqueue.callback.keymappingqueue.GetKeyMapping;
import org.teleal.cling.support.playqueue.callback.keymappingqueue.SetKeyMapping;
import org.teleal.cling.support.playqueue.callback.keymappingqueue.SetSpotifyPreset;

/* JADX INFO: loaded from: classes.dex */
public class d implements IWiimuPlayQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22538a = "0";

    public class a extends RemoveTracksInQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22539a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, Service service, String str, int i2, int i3, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, i2, i3);
            this.f22539a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.playqueue.callback.RemoveTracksInQueue, org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22539a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.RemoveTracksInQueue, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22539a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class a0 extends GetQueueLoopMode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22540a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a0(d dVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22540a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22540a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            if (this.f22540a != null) {
                Map mapUnmodifiableMap = Collections.unmodifiableMap(actionInvocation.f78399c);
                ((ActionArgumentValue) mapUnmodifiableMap.get("LoopMode")).f78394b.toString();
                this.f22540a.success(mapUnmodifiableMap);
            }
        }
    }

    public class b extends ReplaceQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22541a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22541a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22541a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22541a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class b0 extends PlayQueueWithIndex {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22542a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b0(d dVar, Service service, String str, UnsignedIntegerFourBytes unsignedIntegerFourBytes, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, unsignedIntegerFourBytes);
            this.f22542a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.playqueue.callback.PlayQueueWithIndex, org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22542a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.PlayQueueWithIndex, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22542a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class c extends SetKeyMapping {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22543a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22543a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22543a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22543a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    /* JADX INFO: renamed from: com.android.wiimu.upnp.impl.d$d, reason: collision with other inner class name */
    public class C0040d extends SetQueueLoopMode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22544a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0040d(d dVar, Service service, int i2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, i2);
            this.f22544a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22544a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22544a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class e extends SearchQueueOnline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22545a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(d dVar, Service service, String str, String str2, int i2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, i2);
            this.f22545a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22545a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.browsequeue.BrowseQueue
        public void received(String str, Object obj) {
        }

        @Override // org.teleal.cling.support.playqueue.callback.browsequeue.BrowseQueue, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22545a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class f extends SetQueueRecord {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22546a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(d dVar, Service service, String str, String str2, String str3, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3);
            this.f22546a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22546a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22546a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class g extends SetSongsRecord {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22547a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(d dVar, Service service, String str, String str2, String str3, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3);
            this.f22547a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22547a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22547a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class h extends UserRegister {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22548a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(d dVar, Service service, String str, String str2, String str3, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3);
            this.f22548a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22548a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22548a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class i extends SetSpotifyPreset {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22549a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(d dVar, Service service, int i2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, i2);
            this.f22549a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22549a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22549a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class j extends GetQueueOnline {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22550a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(d dVar, Service service, String str, String str2, String str3, int i2, String str4, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3, i2, str4);
            this.f22550a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22550a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22550a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class k extends AppendTracksInQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22551a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22551a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.playqueue.callback.AppendTracksInQueue, org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            super.failure(actionInvocation, upnpResponse, str);
            IWiimuActionCallback iWiimuActionCallback = this.f22551a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.AppendTracksInQueue, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22551a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class l extends GetUserInfoTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22552a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22552a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22552a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22552a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class m extends GetUserInfoTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22553a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(d dVar, Service service, String str, boolean z, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, z);
            this.f22553a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22553a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22553a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class n extends GetUserInfoTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22554a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(d dVar, Service service, String str, String str2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2);
            this.f22554a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22554a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22554a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class o extends GetUserLoginTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22555a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(d dVar, Service service, String str, String str2, String str3, String str4, String str5, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3, str4, str5);
            this.f22555a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22555a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22555a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class p extends GetUserLogoutTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22556a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22556a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22556a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22556a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class q extends GetUserFavoritesTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22557a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(d dVar, Service service, String str, String str2, String str3, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3);
            this.f22557a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22557a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22557a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class r extends BrowseQueueUSBDisk {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22558a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(d dVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22558a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22558a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.BrowseQueueUSBDisk
        public void received(String str, Object obj) {
        }

        @Override // org.teleal.cling.support.playqueue.callback.BrowseQueueUSBDisk, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22558a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class s extends GetQueueIndex {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22559a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22559a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.playqueue.callback.GetQueueIndex, org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22559a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.GetQueueIndex, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22559a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class t extends ContentBrowseActionCallbackImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LPMediaServerResultListener f22560a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(Service service, int i2, int i3, Container container, LPMediaServerResultListener lPMediaServerResultListener) {
            super(service, i2, i3, container);
            this.f22560a = lPMediaServerResultListener;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse) {
            super.failure(actionInvocation, upnpResponse);
        }

        @Override // org.teleal.cling.support.contentdirectory.ui.ContentBrowseActionCallbackImpl
        public void onReceiveCallback(ArrayList<ContentItem> arrayList) {
            List<ContentItem> listA = d.this.a(arrayList);
            LPMediaServerResultListener lPMediaServerResultListener = this.f22560a;
            if (lPMediaServerResultListener != null) {
                lPMediaServerResultListener.onSuccess(listA);
            }
        }
    }

    public class u extends AppendTracksInQueueEx {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22562a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(d dVar, Service service, String str, int i2, int i3, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, i2, i3);
            this.f22562a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.playqueue.callback.AppendTracksInQueueEx, org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            super.failure(actionInvocation, upnpResponse, str);
            IWiimuActionCallback iWiimuActionCallback = this.f22562a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.AppendTracksInQueueEx, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22562a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class v extends BackUpQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22563a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22563a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22563a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22563a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class w extends BrowseQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22564a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22564a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22564a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.browsequeue.BrowseQueue
        public void received(String str, Object obj) {
        }

        @Override // org.teleal.cling.support.playqueue.callback.browsequeue.BrowseQueue, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22564a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class x extends CreateQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22565a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public x(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22565a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.playqueue.callback.CreateQueue, org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22565a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.playqueue.callback.CreateQueue, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22565a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class y extends DeleteQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22566a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y(d dVar, Service service, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str);
            this.f22566a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22566a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22566a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class z extends GetKeyMapping {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22567a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public z(d dVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22567a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22567a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            IWiimuActionCallback iWiimuActionCallback = this.f22567a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ContentItem> a(ArrayList<ContentItem> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (ContentItem contentItem : arrayList) {
            if (contentItem.f78373c.booleanValue()) {
                Container container = contentItem.f78373c.booleanValue() ? (Container) contentItem.f78371a : null;
                if (container != null) {
                    boolean zIsAudio = DIDLContentScanner.isAudio(container);
                    boolean zIsImage = DIDLContentScanner.isImage(container);
                    boolean zIsVedio = DIDLContentScanner.isVedio(container);
                    if (zIsAudio) {
                        arrayList2.add(contentItem);
                    } else if (!zIsImage && !zIsVedio) {
                        arrayList2.add(contentItem);
                    }
                }
            } else {
                arrayList2.add(contentItem);
            }
        }
        return arrayList2;
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void appendTracksInQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new k(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void appendTracksInQueueEx(String str, int i2, int i3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new u(this, serviceC, str, i2, i3, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void backupQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new v(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void browseNAS(Device device, LPMediaServerPlayItem lPMediaServerPlayItem, int i2, int i3, LPMediaServerResultListener lPMediaServerResultListener) throws Exception {
        LPMediaServerResultListener lPMediaServerResultListener2;
        Exception exc;
        if (device == null) {
            return;
        }
        try {
            Service serviceB = com.android.wiimu.upnp.impl.f.b(device);
            try {
                if (serviceB == null) {
                    if (lPMediaServerResultListener != null) {
                        lPMediaServerResultListener.onFailed(com.android.wiimu.upnp.impl.c.a("browse nas service is Error"));
                        return;
                    }
                    return;
                }
                Container containerA = lPMediaServerPlayItem == null ? a(serviceB) : lPMediaServerPlayItem.getContainer();
                if (containerA == null) {
                    if (lPMediaServerResultListener != null) {
                        lPMediaServerResultListener.onFailed(com.android.wiimu.upnp.impl.c.a("browse nas service is Error"));
                        return;
                    }
                    return;
                } else {
                    lPMediaServerResultListener2 = lPMediaServerResultListener;
                    try {
                        com.android.wiimu.upnp.impl.h.a(new t(serviceB, i2 * i3, i3, containerA, lPMediaServerResultListener2));
                        return;
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
            } catch (Exception e3) {
                exc = e3;
                lPMediaServerResultListener2 = lPMediaServerResultListener;
            }
        } catch (Exception e4) {
            e = e4;
            lPMediaServerResultListener2 = lPMediaServerResultListener;
        }
        exc = e;
        exc.printStackTrace();
        if (lPMediaServerResultListener2 != null) {
            lPMediaServerResultListener2.onFailed(com.android.wiimu.upnp.impl.c.a("browse nas Error: " + exc.getMessage()));
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void browseQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new w(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void browseQueueUSBDisk(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device == null) {
            return;
        }
        try {
            Service serviceC = com.android.wiimu.upnp.impl.f.c(device);
            if (serviceC != null) {
                com.android.wiimu.upnp.impl.h.a(new r(this, serviceC, iWiimuActionCallback));
            } else if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("getUserLogout service is Error"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("browse queue usbdisk is Error: " + e2.getMessage()));
            }
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void createQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new x(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void deleteQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new y(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getKeyMapping(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new z(this, serviceC, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getQueueIndex(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device == null) {
            return;
        }
        try {
            Service serviceC = com.android.wiimu.upnp.impl.f.c(device);
            if (serviceC != null) {
                com.android.wiimu.upnp.impl.h.a(new s(this, serviceC, str, iWiimuActionCallback));
            } else if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("getUserLogout service is Error"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("get queue index is Error: " + e2.getMessage()));
            }
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getQueueLoopMode(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new a0(this, serviceC, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getQueueOnline(String str, String str2, String str3, int i2, String str4, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new j(this, serviceC, str, str2, str3, i2, str4, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserFavorites(Device device, String str, String str2, String str3, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuActionCallback iWiimuActionCallback2;
        Exception exc;
        if (device == null) {
            return;
        }
        try {
            Service serviceC = com.android.wiimu.upnp.impl.f.c(device);
            if (serviceC != null) {
                iWiimuActionCallback2 = iWiimuActionCallback;
                try {
                    com.android.wiimu.upnp.impl.h.a(new q(this, serviceC, str, str2, str3, iWiimuActionCallback2));
                    return;
                } catch (Exception e2) {
                    e = e2;
                }
            } else {
                if (iWiimuActionCallback == null) {
                    return;
                }
                try {
                    iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("getUserLogout service is Error"));
                    return;
                } catch (Exception e3) {
                    exc = e3;
                    iWiimuActionCallback2 = iWiimuActionCallback;
                }
            }
        } catch (Exception e4) {
            e = e4;
            iWiimuActionCallback2 = iWiimuActionCallback;
        }
        exc = e;
        exc.printStackTrace();
        if (iWiimuActionCallback2 != null) {
            iWiimuActionCallback2.failure(com.android.wiimu.upnp.impl.c.a("getUserLogin service is Error: " + exc.getMessage()));
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserInfo(Device device, String str, boolean z2, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new m(this, serviceC, str, z2, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserLogin(Device device, String str, String str2, String str3, String str4, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuActionCallback iWiimuActionCallback2;
        Exception exc;
        if (device == null) {
            return;
        }
        try {
            Service serviceC = com.android.wiimu.upnp.impl.f.c(device);
            if (serviceC != null) {
                iWiimuActionCallback2 = iWiimuActionCallback;
                try {
                    com.android.wiimu.upnp.impl.h.a(new o(this, serviceC, str, str2, str3, "", str4, iWiimuActionCallback2));
                    return;
                } catch (Exception e2) {
                    e = e2;
                }
            } else {
                if (iWiimuActionCallback == null) {
                    return;
                }
                try {
                    iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("getUserLogin service is Error"));
                    return;
                } catch (Exception e3) {
                    exc = e3;
                    iWiimuActionCallback2 = iWiimuActionCallback;
                }
            }
        } catch (Exception e4) {
            e = e4;
            iWiimuActionCallback2 = iWiimuActionCallback;
        }
        exc = e;
        exc.printStackTrace();
        if (iWiimuActionCallback2 != null) {
            iWiimuActionCallback2.failure(com.android.wiimu.upnp.impl.c.a("getUserLogin service is Error: " + exc.getMessage()));
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserLogout(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device == null) {
            return;
        }
        try {
            Service serviceC = com.android.wiimu.upnp.impl.f.c(device);
            if (serviceC != null) {
                com.android.wiimu.upnp.impl.h.a(new p(this, serviceC, str, iWiimuActionCallback));
            } else if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("getUserLogout service is Error"));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a("getUserLogin service is Error: " + e2.getMessage()));
            }
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void playQueueWithIndex(String str, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new b0(this, serviceC, str, new UnsignedIntegerFourBytes(i2), iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void removeTracksInQueue(String str, int i2, int i3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new a(this, serviceC, str, i2, i3, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void replaceQueue(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new b(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void searchQueueOnline(String str, String str2, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new e(this, serviceC, str, str2, i2, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setKeyMapping(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new c(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setQueueLoopMode(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new C0040d(this, serviceC, i2, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setQueuePolicy(String str, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device != null && com.android.wiimu.upnp.impl.f.c(device) != null) {
            throw com.android.wiimu.upnp.impl.c.a("setQueuePolicy", "queueName");
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setQueueRecord(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new f(this, serviceC, str, str2, str3, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setSongsRecord(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new g(this, serviceC, str, str2, str3, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void setSpotifyPreset(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new i(this, serviceC, i2, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void userRegister(String str, String str2, String str3, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new h(this, serviceC, str, str2, str3, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void appendTracksInQueue(String str, int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device != null && com.android.wiimu.upnp.impl.f.c(device) != null) {
            throw com.android.wiimu.upnp.impl.c.a("appendTracksInQueue", "direction");
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserInfo(Device device, String str, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new l(this, serviceC, str, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuPlayQueue
    public void getUserInfo(Device device, String str, String str2, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceC;
        if (device == null || (serviceC = com.android.wiimu.upnp.impl.f.c(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new n(this, serviceC, str, str2, iWiimuActionCallback));
    }

    private Container a(Service service) {
        Device device;
        Container container = new Container();
        container.f78569a = "0";
        if (service == null || (device = service.f78482e) == null) {
            return null;
        }
        container.f78571c = "Content Directory on ".concat(device.h());
        return container;
    }
}
