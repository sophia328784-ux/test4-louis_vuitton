package com.android.wiimu.upnp.impl;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuAVTransport;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.utils.GsonUtil;
import java.util.Collections;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.support.avtransport.callback.GetInfoEx;
import org.teleal.cling.support.avtransport.callback.GetMediaInfo;
import org.teleal.cling.support.avtransport.callback.GetPDADeviceInfo;
import org.teleal.cling.support.avtransport.callback.GetPositionInfo;
import org.teleal.cling.support.avtransport.callback.GetTransportInfo;
import org.teleal.cling.support.avtransport.callback.GetTransportSettings;
import org.teleal.cling.support.avtransport.callback.Next;
import org.teleal.cling.support.avtransport.callback.Pause;
import org.teleal.cling.support.avtransport.callback.Play;
import org.teleal.cling.support.avtransport.callback.Previous;
import org.teleal.cling.support.avtransport.callback.Seek;
import org.teleal.cling.support.avtransport.callback.SeekBackward;
import org.teleal.cling.support.avtransport.callback.SeekForward;
import org.teleal.cling.support.avtransport.callback.SetAVTransportURI;
import org.teleal.cling.support.avtransport.callback.SetPDADeviceInfo;
import org.teleal.cling.support.avtransport.callback.Stop;
import org.teleal.cling.support.model.MediaInfo;
import org.teleal.cling.support.model.PositionInfo;
import org.teleal.cling.support.model.SeekMode;
import org.teleal.cling.support.model.TransportInfo;

/* JADX INFO: loaded from: classes.dex */
public class b implements IWiimuAVTransport {

    public class a extends Next {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22520a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22520a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.avtransport.callback.Next, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22520a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.Next, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            ActionException actionException = actionInvocation.d;
            if (actionException != null) {
                if (actionException.f78396b != 200) {
                    this.f22520a.failure(new Exception(actionInvocation.d.getMessage()));
                }
            } else {
                IWiimuActionCallback iWiimuActionCallback = this.f22520a;
                if (iWiimuActionCallback != null) {
                    iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.android.wiimu.upnp.impl.b$b, reason: collision with other inner class name */
    public class C0039b extends Pause {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22521a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0039b(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22521a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22521a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.Pause, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            ActionException actionException = actionInvocation.d;
            if (actionException != null) {
                if (actionException.f78396b != 200) {
                    this.f22521a.failure(new Exception(actionInvocation.d.getMessage()));
                }
            } else {
                IWiimuActionCallback iWiimuActionCallback = this.f22521a;
                if (iWiimuActionCallback != null) {
                    iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
                }
            }
        }
    }

    public class c extends Play {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22522a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22522a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22522a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.Play, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            this.f22522a.success(Collections.unmodifiableMap(actionInvocation.f78399c));
        }
    }

    public class d extends Previous {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22523a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22523a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.avtransport.callback.Previous, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22523a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.Previous, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22523a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class e extends Seek {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22524a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(b bVar, Service service, SeekMode seekMode, String str, IWiimuActionCallback iWiimuActionCallback) {
            super(service, seekMode, str);
            this.f22524a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22524a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.Seek, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22524a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class f extends SetAVTransportURI {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22525a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(b bVar, Service service, String str, String str2, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2);
            this.f22525a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22525a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.SetAVTransportURI, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22525a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class g extends Stop {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22526a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22526a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22526a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.Stop, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22526a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class h extends SeekBackward {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22527a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22527a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.avtransport.callback.SeekBackward, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22527a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.SeekBackward, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22527a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class i extends SeekForward {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22528a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22528a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.avtransport.callback.SeekForward, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22528a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.SeekForward, org.teleal.cling.controlpoint.ActionCallbackNotResponse
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22528a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class j extends GetInfoEx {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22529a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22529a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22529a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetInfoEx, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            ActionException actionException = actionInvocation.d;
            if (actionException != null) {
                if (actionException.f78396b != 200) {
                    this.f22529a.failure(new Exception(actionInvocation.d.getMessage()));
                }
            } else {
                IWiimuActionCallback iWiimuActionCallback = this.f22529a;
                if (iWiimuActionCallback != null) {
                    iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
                }
            }
        }
    }

    public class k extends GetPDADeviceInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22530a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22530a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            this.f22530a.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetPDADeviceInfo, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            this.f22530a.success(Collections.unmodifiableMap(actionInvocation.f78399c));
        }
    }

    public class l extends SetPDADeviceInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22531a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(b bVar, Service service, com.android.wiimu.model.pda.a aVar, IWiimuActionCallback iWiimuActionCallback) {
            super(service, aVar);
            this.f22531a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            this.f22531a.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
        }

        @Override // org.teleal.cling.support.avtransport.callback.SetPDADeviceInfo, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            this.f22531a.success(Collections.unmodifiableMap(actionInvocation.f78399c));
        }
    }

    public class m extends SetPDADeviceInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22532a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(b bVar, Service service, String str, String str2, String str3, String str4, String str5, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3, str4, str5);
            this.f22532a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            this.f22532a.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
        }

        @Override // org.teleal.cling.support.avtransport.callback.SetPDADeviceInfo, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            this.f22532a.success(Collections.unmodifiableMap(actionInvocation.f78399c));
        }
    }

    public class n extends SetPDADeviceInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22533a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(b bVar, Service service, String str, String str2, String str3, String str4, String str5, IWiimuActionCallback iWiimuActionCallback) {
            super(service, str, str2, str3, str4, str5);
            this.f22533a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22533a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.SetPDADeviceInfo, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            IWiimuActionCallback iWiimuActionCallback = this.f22533a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            }
        }
    }

    public class o extends GetMediaInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22534a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22534a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22534a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetMediaInfo
        public void received(ActionInvocation actionInvocation, MediaInfo mediaInfo) {
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetMediaInfo, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            ActionException actionException = actionInvocation.d;
            if (actionException != null) {
                if (actionException.f78396b != 200) {
                    this.f22534a.failure(new Exception(actionInvocation.d.getMessage()));
                }
            } else {
                IWiimuActionCallback iWiimuActionCallback = this.f22534a;
                if (iWiimuActionCallback != null) {
                    iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
                }
            }
        }
    }

    public class p extends GetPositionInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22535a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22535a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22535a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetPositionInfo
        public void received(ActionInvocation actionInvocation, PositionInfo positionInfo) {
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetPositionInfo, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            ActionException actionException = actionInvocation.d;
            if (actionException == null) {
                this.f22535a.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            } else if (actionException.f78396b != 200) {
                this.f22535a.failure(new Exception(actionInvocation.d.getMessage()));
            }
        }
    }

    public class q extends GetTransportInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22536a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22536a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22536a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetTransportInfo
        public void received(ActionInvocation actionInvocation, TransportInfo transportInfo) {
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetTransportInfo, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            ActionException actionException = actionInvocation.d;
            if (actionException != null) {
                if (actionException.f78396b != 200) {
                    this.f22536a.failure(new Exception(actionInvocation.d.getMessage()));
                }
            } else {
                IWiimuActionCallback iWiimuActionCallback = this.f22536a;
                if (iWiimuActionCallback != null) {
                    iWiimuActionCallback.success(Collections.unmodifiableMap(actionInvocation.f78399c));
                }
            }
        }
    }

    public class r extends GetTransportSettings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWiimuActionCallback f22537a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(b bVar, Service service, IWiimuActionCallback iWiimuActionCallback) {
            super(service);
            this.f22537a = iWiimuActionCallback;
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetTransportSettings, org.teleal.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
            IWiimuActionCallback iWiimuActionCallback = this.f22537a;
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(com.android.wiimu.upnp.impl.c.a(actionInvocation, upnpResponse, str));
            }
        }

        @Override // org.teleal.cling.support.avtransport.callback.GetTransportSettings, org.teleal.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
            super.success(actionInvocation);
            ActionException actionException = actionInvocation.d;
            if (actionException == null) {
                this.f22537a.success(Collections.unmodifiableMap(actionInvocation.f78399c));
            } else if (actionException.f78396b != 200) {
                this.f22537a.failure(new Exception(actionInvocation.d.getMessage()));
            }
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void BackForward(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new h(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void SeekForward(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new i(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getCurrentTranportActions(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        throw com.android.wiimu.upnp.impl.c.a("getCurrentTranportActions", "");
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getDeviceCapabilities(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        throw com.android.wiimu.upnp.impl.c.a("getDeviceCapabilities", "");
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getInfoEx(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new j(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getMediaInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new o(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getPDADeviceInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new k(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getPlayType(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        if (device != null && com.android.wiimu.upnp.impl.f.a(device) != null) {
            throw com.android.wiimu.upnp.impl.c.a("getPlayType", "");
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getPositionInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new p(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getTransportInfo(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new q(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void getTransportSettings(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new r(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void next(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new a(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void pause(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new C0039b(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void play(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new c(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void previous(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new d(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void seek(int i2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        int i3 = i2 / 3600;
        int i4 = i2 - (i3 * 3600);
        int i5 = i4 / 60;
        com.android.wiimu.upnp.impl.h.a(new e(this, serviceA, SeekMode.REL_TIME, String.format("%02d:%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i5), Integer.valueOf(i4 - (i5 * 60))), iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setAVTransportURI(String str, String str2, Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new f(this, serviceA, str, str2, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setPDAClientCfg(Device device, com.android.wiimu.model.pda.b bVar, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        IWiimuActionCallback iWiimuActionCallback2;
        if (device == null) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("setPDAClientCfg mediaRender is null Ponter exception."));
                return;
            }
            return;
        }
        Service serviceA = com.android.wiimu.upnp.impl.f.a(device);
        if (serviceA == null) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("setPDAClientCfg service is null Ponter exception."));
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(bVar.d())) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("setPDAClientCfg UserName is Empty."));
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(bVar.a())) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("setPDAClientCfg AccessToken is Empty."));
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(bVar.c())) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("setPDAClientCfg RefreshToken is Empty."));
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(bVar.b())) {
            if (iWiimuActionCallback != null) {
                iWiimuActionCallback.failure(new Exception("setPDAClientCfg DeviceResigerResponse is Empty."));
                return;
            }
            return;
        }
        try {
            com.android.wiimu.model.pda.c cVar = (com.android.wiimu.model.pda.c) GsonUtil.parseJsonToBean(bVar.b(), com.android.wiimu.model.pda.c.class);
            iWiimuActionCallback2 = iWiimuActionCallback;
            try {
                com.android.wiimu.upnp.impl.h.a(new n(this, serviceA, cVar.c().d(), cVar.c().c(), cVar.c().a(), cVar.c().e(), "{\\\"account\\\":\\\"" + bVar.d() + "\\\",\\\"password\\\":\\\"\\\",\\\"accessToken\\\":\\\"" + bVar.a() + "\\\",\\\"refreshToken\\\":\\\"" + bVar.c() + "\\\"}", iWiimuActionCallback2));
            } catch (Exception e2) {
                e = e2;
                Exception exc = e;
                if (iWiimuActionCallback2 != null) {
                    iWiimuActionCallback2.failure(exc);
                }
            }
        } catch (Exception e3) {
            e = e3;
            iWiimuActionCallback2 = iWiimuActionCallback;
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void stop(Device device, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        com.android.wiimu.upnp.impl.h.a(new g(this, serviceA, iWiimuActionCallback));
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setPDAClientCfg(Device device, String str, String str2, String str3, String str4, String str5, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        try {
            com.android.wiimu.upnp.impl.h.a(new m(this, serviceA, str, str2, str3, str4, str5, iWiimuActionCallback));
        } catch (Exception e2) {
            iWiimuActionCallback.failure(e2);
        }
    }

    @Override // com.android.wiimu.upnp.IWiimuAVTransport
    public void setPDAClientCfg(Device device, com.android.wiimu.model.pda.a aVar, IWiimuActionCallback iWiimuActionCallback) throws Exception {
        Service serviceA;
        if (device == null || (serviceA = com.android.wiimu.upnp.impl.f.a(device)) == null) {
            return;
        }
        try {
            com.android.wiimu.upnp.impl.h.a(new l(this, serviceA, aVar, iWiimuActionCallback));
        } catch (Exception e2) {
            iWiimuActionCallback.failure(e2);
        }
    }
}
