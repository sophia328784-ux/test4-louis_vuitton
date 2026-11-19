package androidx.media3.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.Surface;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Rating;
import androidx.media3.common.util.Log;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaSession extends IInterface {

    public static abstract class Stub extends Binder implements IMediaSession {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f17300a = 0;

        public static class Proxy implements IMediaSession {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f17301a;

            @Override // androidx.media3.session.IMediaSession
            public final void A0(IMediaController iMediaController, int i2, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    this.f17301a.transact(3038, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void A2(IMediaController iMediaController, int i2, IBinder iBinder, int i3, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeLong(j2);
                    this.f17301a.transact(3012, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void D2(IMediaController iMediaController, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3048, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void F0(IMediaController iMediaController, int i2, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeFloat(f2);
                    this.f17301a.transact(3002, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void G(IMediaController iMediaController, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3007, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void G0(IMediaController iMediaController, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3014, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void H0(IMediaController iMediaController, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.f17301a.transact(3022, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void J0(IMediaController iMediaController, int i2, float f2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeFloat(f2);
                    this.f17301a.transact(3028, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void L(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3035, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void L0(IMediaController iMediaController, int i2, int i3, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3055, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void L1(IMediaController iMediaController) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    this.f17301a.transact(3045, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void M1(IMediaController iMediaController, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.f17301a.transact(3020, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void P(IMediaController iMediaController, int i2, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f17301a.transact(3018, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void Q0(IMediaController iMediaController, int i2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.f17301a.transact(3031, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void R(IMediaController iMediaController, int i2, Bundle bundle, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f17301a.transact(3057, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void S0(IMediaController iMediaController, int i2, int i3, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3030, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void T(IMediaController iMediaController, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f17301a.transact(3003, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void T0(IMediaController iMediaController, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.f17301a.transact(3051, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void T1(IMediaController iMediaController, int i2, Bundle bundle, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    parcelObtain.writeInt(1);
                    this.f17301a.transact(3009, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void U0(IMediaController iMediaController, int i2, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f17301a.transact(3006, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void U1(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3034, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void V(IMediaController iMediaController, int i2, IBinder iBinder, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(1);
                    this.f17301a.transact(3011, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void W(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3042, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void X1(IMediaController iMediaController, int i2, Bundle bundle, Bundle bundle2, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    _Parcel.b(parcelObtain, bundle2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f17301a.transact(3060, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void Y(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3047, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void Y0(IMediaController iMediaController, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f17301a.transact(3037, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void Z0(IMediaController iMediaController, int i2, int i3, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeLong(j2);
                    this.f17301a.transact(3039, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void a1(IMediaController iMediaController, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f17301a.transact(3017, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f17301a;
            }

            @Override // androidx.media3.session.IMediaSession
            public final void e2(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3041, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void h2(IMediaController iMediaController, int i2, int i3, int i4, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.f17301a.transact(3056, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void i2(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3024, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void j1(IMediaController iMediaController, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3027, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void j2(IMediaController iMediaController, int i2, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.f17301a.transact(3013, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void k0(IMediaController iMediaController, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3015, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void l1(IMediaController iMediaController, int i2, int i3, int i4, int i5) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    this.f17301a.transact(3023, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void l2(IMediaController iMediaController, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f17301a.transact(3052, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void o(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3004, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void o0(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3046, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void o1(IMediaController iMediaController, int i2, Surface surface) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, surface);
                    this.f17301a.transact(3044, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void o2(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3040, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void p(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3025, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void p0(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3059, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void p1(IMediaController iMediaController, int i2, int i3, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.f17301a.transact(3032, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void q(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3058, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void q1(IMediaController iMediaController, int i2, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    this.f17301a.transact(3033, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void r(IMediaController iMediaController, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.f17301a.transact(3062, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void r0(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3036, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void s0(IMediaController iMediaController, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f17301a.transact(3053, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void t(IMediaController iMediaController, int i2, Surface surface, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, surface);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.f17301a.transact(3061, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void u2(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3005, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void w2(IMediaController iMediaController, int i2, boolean z, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i3);
                    this.f17301a.transact(3054, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void x0(IMediaController iMediaController, int i2, Bundle bundle, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    parcelObtain.writeLong(j2);
                    this.f17301a.transact(3008, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void x1(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3026, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void y(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3021, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void y0(IMediaController iMediaController, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f17301a.transact(3019, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void y2(IMediaController iMediaController, int i2, Bundle bundle, Bundle bundle2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    _Parcel.b(parcelObtain, bundle);
                    _Parcel.b(parcelObtain, bundle2);
                    this.f17301a.transact(3016, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.media3.session.IMediaSession
            public final void z0(IMediaController iMediaController, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.media3.session.IMediaSession");
                    parcelObtain.writeStrongInterface(iMediaController);
                    parcelObtain.writeInt(i2);
                    this.f17301a.transact(3043, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "androidx.media3.session.IMediaSession");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            MediaSession.ControllerInfo controllerInfoG;
            int i4 = 1;
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface("androidx.media3.session.IMediaSession");
            }
            if (i2 == 1598968902) {
                parcel2.writeString("androidx.media3.session.IMediaSession");
                return true;
            }
            int i5 = 14;
            boolean z = false;
            switch (i2) {
                case 3002:
                    ((MediaSessionStub) this).F0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readFloat());
                    return true;
                case 3003:
                    ((MediaSessionStub) this).T(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3004:
                    ((MediaSessionStub) this).o(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3005:
                    ((MediaSessionStub) this).u2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3006:
                    ((MediaSessionStub) this).U0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 3007:
                    ((MediaSessionStub) this).T1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR), true);
                    return true;
                case 3008:
                    ((MediaSessionStub) this).x0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR), parcel.readLong());
                    return true;
                case 3009:
                    ((MediaSessionStub) this).T1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR), parcel.readInt() != 0);
                    return true;
                case 3010:
                    ((MediaSessionStub) this).V(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder(), true);
                    return true;
                case 3011:
                    ((MediaSessionStub) this).V(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder(), parcel.readInt() != 0);
                    return true;
                case 3012:
                    ((MediaSessionStub) this).A2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder(), parcel.readInt(), parcel.readLong());
                    return true;
                case 3013:
                    ((MediaSessionStub) this).j2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 3014:
                    ((MediaSessionStub) this).G0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                    return true;
                case 3015:
                    ((MediaSessionStub) this).k0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                    return true;
                case 3016:
                    IMediaController iMediaControllerE2 = IMediaController.Stub.E2(parcel.readStrongBinder());
                    int i6 = parcel.readInt();
                    Parcelable.Creator creator = Bundle.CREATOR;
                    ((MediaSessionStub) this).X1(iMediaControllerE2, i6, (Bundle) _Parcel.a(parcel, creator), (Bundle) _Parcel.a(parcel, creator), false);
                    return true;
                case 3017:
                    ((MediaSessionStub) this).a1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3018:
                    ((MediaSessionStub) this).P(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 3019:
                    ((MediaSessionStub) this).y0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3020:
                    ((MediaSessionStub) this).M1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3021:
                    ((MediaSessionStub) this).y(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3022:
                    ((MediaSessionStub) this).H0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3023:
                    ((MediaSessionStub) this).l1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3024:
                    ((MediaSessionStub) this).i2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3025:
                    ((MediaSessionStub) this).p(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3026:
                    ((MediaSessionStub) this).x1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3027:
                    ((MediaSessionStub) this).j1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                    return true;
                case 3028:
                    ((MediaSessionStub) this).J0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readFloat());
                    return true;
                case 3029:
                    IMediaController iMediaControllerE3 = IMediaController.Stub.E2(parcel.readStrongBinder());
                    int i7 = parcel.readInt();
                    Bundle bundle = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                    MediaSessionStub mediaSessionStub = (MediaSessionStub) this;
                    if (iMediaControllerE3 != null && bundle != null && (controllerInfoG = mediaSessionStub.f17479j.g(iMediaControllerE3.asBinder())) != null) {
                        try {
                            mediaSessionStub.K2(controllerInfoG, i7, 20, new c2(new s(new v1(2, MediaItem.b(controllerInfoG.f17421c, bundle)), new q0(20), i5), i4));
                        } catch (RuntimeException e2) {
                            Log.h("Ignoring malformed Bundle for MediaItem", e2);
                        }
                    }
                    return true;
                case 3030:
                    ((MediaSessionStub) this).S0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                    return true;
                case 3031:
                    ((MediaSessionStub) this).Q0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 3032:
                    ((MediaSessionStub) this).p1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 3033:
                    ((MediaSessionStub) this).q1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                    return true;
                case 3034:
                    ((MediaSessionStub) this).U1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3035:
                    ((MediaSessionStub) this).L(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3036:
                    ((MediaSessionStub) this).r0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3037:
                    ((MediaSessionStub) this).Y0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3038:
                    ((MediaSessionStub) this).A0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readLong());
                    return true;
                case 3039:
                    ((MediaSessionStub) this).Z0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    return true;
                case 3040:
                    ((MediaSessionStub) this).o2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3041:
                    ((MediaSessionStub) this).e2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3042:
                    ((MediaSessionStub) this).W(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3043:
                    ((MediaSessionStub) this).z0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3044:
                    ((MediaSessionStub) this).o1(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Surface) _Parcel.a(parcel, Surface.CREATOR));
                    return true;
                case 3045:
                    ((MediaSessionStub) this).L1(IMediaController.Stub.E2(parcel.readStrongBinder()));
                    return true;
                case 3046:
                    ((MediaSessionStub) this).o0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3047:
                    ((MediaSessionStub) this).Y(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3048:
                    ((MediaSessionStub) this).D2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                    return true;
                case 3049:
                    IMediaController iMediaControllerE4 = IMediaController.Stub.E2(parcel.readStrongBinder());
                    int i8 = parcel.readInt();
                    String string = parcel.readString();
                    Bundle bundle2 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                    MediaSessionStub mediaSessionStub2 = (MediaSessionStub) this;
                    if (iMediaControllerE4 != null && string != null && bundle2 != null) {
                        if (TextUtils.isEmpty(string)) {
                            Log.g("setRatingWithMediaId(): Ignoring empty mediaId");
                        } else {
                            try {
                                mediaSessionStub2.F2(iMediaControllerE4, i8, null, 40010, new c2(new q0(string, 17, Rating.a(bundle2)), i4));
                            } catch (RuntimeException e3) {
                                Log.h("Ignoring malformed Bundle for Rating", e3);
                            }
                        }
                    }
                    return true;
                case 3050:
                    IMediaController iMediaControllerE5 = IMediaController.Stub.E2(parcel.readStrongBinder());
                    int i9 = parcel.readInt();
                    Bundle bundle3 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                    MediaSessionStub mediaSessionStub3 = (MediaSessionStub) this;
                    if (iMediaControllerE5 != null && bundle3 != null) {
                        try {
                            mediaSessionStub3.F2(iMediaControllerE5, i9, null, 40010, new c2(new q0(Rating.a(bundle3), 28), i4));
                        } catch (RuntimeException e4) {
                            Log.h("Ignoring malformed Bundle for Rating", e4);
                        }
                    }
                    return true;
                case 3051:
                    ((MediaSessionStub) this).T0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3052:
                    ((MediaSessionStub) this).l2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3053:
                    ((MediaSessionStub) this).s0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    return true;
                case 3054:
                    ((MediaSessionStub) this).w2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 3055:
                    ((MediaSessionStub) this).L0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR));
                    return true;
                case 3056:
                    ((MediaSessionStub) this).h2(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 3057:
                    ((MediaSessionStub) this).R(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Bundle) _Parcel.a(parcel, Bundle.CREATOR), parcel.readInt() != 0);
                    return true;
                case 3058:
                    ((MediaSessionStub) this).q(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3059:
                    ((MediaSessionStub) this).p0(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 3060:
                    IMediaController iMediaControllerE6 = IMediaController.Stub.E2(parcel.readStrongBinder());
                    int i10 = parcel.readInt();
                    Parcelable.Creator creator2 = Bundle.CREATOR;
                    ((MediaSessionStub) this).X1(iMediaControllerE6, i10, (Bundle) _Parcel.a(parcel, creator2), (Bundle) _Parcel.a(parcel, creator2), parcel.readInt() != 0);
                    return true;
                case 3061:
                    ((MediaSessionStub) this).t(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), (Surface) _Parcel.a(parcel, Surface.CREATOR), parcel.readInt(), parcel.readInt());
                    return true;
                case 3062:
                    ((MediaSessionStub) this).r(IMediaController.Stub.E2(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                default:
                    MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsA = null;
                    switch (i2) {
                        case 4001:
                            IMediaController iMediaControllerE7 = IMediaController.Stub.E2(parcel.readStrongBinder());
                            int i11 = parcel.readInt();
                            Bundle bundle4 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                            MediaSessionStub mediaSessionStub4 = (MediaSessionStub) this;
                            if (iMediaControllerE7 != null) {
                                if (bundle4 != null) {
                                    try {
                                        mediaLibraryService$LibraryParamsA = MediaLibraryService$LibraryParams.a(bundle4);
                                    } catch (RuntimeException e5) {
                                        Log.h("Ignoring malformed Bundle for LibraryParams", e5);
                                    }
                                }
                                mediaSessionStub4.F2(iMediaControllerE7, i11, null, 50000, new c2(new o0(mediaLibraryService$LibraryParamsA, 8), z ? 1 : 0));
                                break;
                            }
                            return true;
                        case 4002:
                            IMediaController iMediaControllerE8 = IMediaController.Stub.E2(parcel.readStrongBinder());
                            int i12 = parcel.readInt();
                            String string2 = parcel.readString();
                            MediaSessionStub mediaSessionStub5 = (MediaSessionStub) this;
                            if (iMediaControllerE8 != null) {
                                if (TextUtils.isEmpty(string2)) {
                                    Log.g("getItem(): Ignoring empty mediaId");
                                    return true;
                                }
                                mediaSessionStub5.F2(iMediaControllerE8, i12, null, 50004, new c2(new q0(string2, i5), z ? 1 : 0));
                                return true;
                            }
                            return true;
                        case 4003:
                            IMediaController iMediaControllerE9 = IMediaController.Stub.E2(parcel.readStrongBinder());
                            int i13 = parcel.readInt();
                            String string3 = parcel.readString();
                            int i14 = parcel.readInt();
                            int i15 = parcel.readInt();
                            Bundle bundle5 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                            MediaSessionStub mediaSessionStub6 = (MediaSessionStub) this;
                            if (iMediaControllerE9 != null) {
                                if (TextUtils.isEmpty(string3)) {
                                    Log.g("getChildren(): Ignoring empty parentId");
                                } else if (i14 < 0) {
                                    Log.g("getChildren(): Ignoring negative page");
                                } else if (i15 < 1) {
                                    Log.g("getChildren(): Ignoring pageSize less than 1");
                                } else {
                                    if (bundle5 != null) {
                                        try {
                                            mediaLibraryService$LibraryParamsA = MediaLibraryService$LibraryParams.a(bundle5);
                                        } catch (RuntimeException e6) {
                                            Log.h("Ignoring malformed Bundle for LibraryParams", e6);
                                        }
                                    }
                                    mediaSessionStub6.F2(iMediaControllerE9, i13, null, 50003, new c2(new n(string3, i14, i15, mediaLibraryService$LibraryParamsA), z ? 1 : 0));
                                }
                                break;
                            }
                            return true;
                        case 4004:
                            IMediaController iMediaControllerE10 = IMediaController.Stub.E2(parcel.readStrongBinder());
                            int i16 = parcel.readInt();
                            String string4 = parcel.readString();
                            Bundle bundle6 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                            MediaSessionStub mediaSessionStub7 = (MediaSessionStub) this;
                            if (iMediaControllerE10 != null) {
                                if (TextUtils.isEmpty(string4)) {
                                    Log.g("search(): Ignoring empty query");
                                } else {
                                    if (bundle6 != null) {
                                        try {
                                            mediaLibraryService$LibraryParamsA = MediaLibraryService$LibraryParams.a(bundle6);
                                        } catch (RuntimeException e7) {
                                            Log.h("Ignoring malformed Bundle for LibraryParams", e7);
                                        }
                                    }
                                    mediaSessionStub7.F2(iMediaControllerE10, i16, null, 50005, new c2(new q0(string4, 26, mediaLibraryService$LibraryParamsA), z ? 1 : 0));
                                }
                                break;
                            }
                            return true;
                        case 4005:
                            IMediaController iMediaControllerE11 = IMediaController.Stub.E2(parcel.readStrongBinder());
                            int i17 = parcel.readInt();
                            String string5 = parcel.readString();
                            int i18 = parcel.readInt();
                            int i19 = parcel.readInt();
                            Bundle bundle7 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                            MediaSessionStub mediaSessionStub8 = (MediaSessionStub) this;
                            if (iMediaControllerE11 != null) {
                                if (TextUtils.isEmpty(string5)) {
                                    Log.g("getSearchResult(): Ignoring empty query");
                                } else if (i18 < 0) {
                                    Log.g("getSearchResult(): Ignoring negative page");
                                } else if (i19 < 1) {
                                    Log.g("getSearchResult(): Ignoring pageSize less than 1");
                                } else {
                                    if (bundle7 != null) {
                                        try {
                                            mediaLibraryService$LibraryParamsA = MediaLibraryService$LibraryParams.a(bundle7);
                                        } catch (RuntimeException e8) {
                                            Log.h("Ignoring malformed Bundle for LibraryParams", e8);
                                        }
                                    }
                                    mediaSessionStub8.F2(iMediaControllerE11, i17, null, 50006, new c2(new n0(string5, i18, i19, mediaLibraryService$LibraryParamsA), z ? 1 : 0));
                                }
                                break;
                            }
                            return true;
                        case 4006:
                            IMediaController iMediaControllerE12 = IMediaController.Stub.E2(parcel.readStrongBinder());
                            int i20 = parcel.readInt();
                            String string6 = parcel.readString();
                            Bundle bundle8 = (Bundle) _Parcel.a(parcel, Bundle.CREATOR);
                            MediaSessionStub mediaSessionStub9 = (MediaSessionStub) this;
                            if (iMediaControllerE12 != null) {
                                if (TextUtils.isEmpty(string6)) {
                                    Log.g("subscribe(): Ignoring empty parentId");
                                } else {
                                    if (bundle8 != null) {
                                        try {
                                            mediaLibraryService$LibraryParamsA = MediaLibraryService$LibraryParams.a(bundle8);
                                        } catch (RuntimeException e9) {
                                            Log.h("Ignoring malformed Bundle for LibraryParams", e9);
                                        }
                                    }
                                    mediaSessionStub9.F2(iMediaControllerE12, i20, null, 50001, new c2(new s(string6, mediaLibraryService$LibraryParamsA, 12), z ? 1 : 0));
                                }
                                break;
                            }
                            return true;
                        case 4007:
                            IMediaController iMediaControllerE13 = IMediaController.Stub.E2(parcel.readStrongBinder());
                            int i21 = parcel.readInt();
                            String string7 = parcel.readString();
                            MediaSessionStub mediaSessionStub10 = (MediaSessionStub) this;
                            if (iMediaControllerE13 != null) {
                                if (TextUtils.isEmpty(string7)) {
                                    Log.g("unsubscribe(): Ignoring empty parentId");
                                    return true;
                                }
                                mediaSessionStub10.F2(iMediaControllerE13, i21, null, 50002, new c2(new o0(string7, 5), z ? 1 : 0));
                                return true;
                            }
                            return true;
                        default:
                            return super.onTransact(i2, parcel, parcel2, i3);
                    }
            }
        }
    }

    public static class _Parcel {
        public static Object a(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void b(Parcel parcel, Parcelable parcelable) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, 0);
            }
        }
    }

    void A0(IMediaController iMediaController, int i2, long j2);

    void A2(IMediaController iMediaController, int i2, IBinder iBinder, int i3, long j2);

    void D2(IMediaController iMediaController, int i2, Bundle bundle);

    void F0(IMediaController iMediaController, int i2, float f2);

    void G(IMediaController iMediaController, int i2, Bundle bundle);

    void G0(IMediaController iMediaController, int i2, Bundle bundle);

    void H0(IMediaController iMediaController, int i2, int i3, int i4);

    void J0(IMediaController iMediaController, int i2, float f2);

    void L(IMediaController iMediaController, int i2);

    void L0(IMediaController iMediaController, int i2, int i3, Bundle bundle);

    void L1(IMediaController iMediaController);

    void M1(IMediaController iMediaController, int i2, int i3, int i4);

    void P(IMediaController iMediaController, int i2, boolean z);

    void Q0(IMediaController iMediaController, int i2, IBinder iBinder);

    void R(IMediaController iMediaController, int i2, Bundle bundle, boolean z);

    void S0(IMediaController iMediaController, int i2, int i3, Bundle bundle);

    void T(IMediaController iMediaController, int i2, int i3);

    void T0(IMediaController iMediaController, int i2, int i3, int i4);

    void T1(IMediaController iMediaController, int i2, Bundle bundle, boolean z);

    void U0(IMediaController iMediaController, int i2, boolean z);

    void U1(IMediaController iMediaController, int i2);

    void V(IMediaController iMediaController, int i2, IBinder iBinder, boolean z);

    void W(IMediaController iMediaController, int i2);

    void X1(IMediaController iMediaController, int i2, Bundle bundle, Bundle bundle2, boolean z);

    void Y(IMediaController iMediaController, int i2);

    void Y0(IMediaController iMediaController, int i2, int i3);

    void Z0(IMediaController iMediaController, int i2, int i3, long j2);

    void a1(IMediaController iMediaController, int i2, int i3);

    void e2(IMediaController iMediaController, int i2);

    void h2(IMediaController iMediaController, int i2, int i3, int i4, IBinder iBinder);

    void i2(IMediaController iMediaController, int i2);

    void j1(IMediaController iMediaController, int i2, Bundle bundle);

    void j2(IMediaController iMediaController, int i2, boolean z);

    void k0(IMediaController iMediaController, int i2, Bundle bundle);

    void l1(IMediaController iMediaController, int i2, int i3, int i4, int i5);

    void l2(IMediaController iMediaController, int i2, int i3);

    void o(IMediaController iMediaController, int i2);

    void o0(IMediaController iMediaController, int i2);

    void o1(IMediaController iMediaController, int i2, Surface surface);

    void o2(IMediaController iMediaController, int i2);

    void p(IMediaController iMediaController, int i2);

    void p0(IMediaController iMediaController, int i2);

    void p1(IMediaController iMediaController, int i2, int i3, IBinder iBinder);

    void q(IMediaController iMediaController, int i2);

    void q1(IMediaController iMediaController, int i2, Bundle bundle);

    void r(IMediaController iMediaController, int i2, int i3, int i4);

    void r0(IMediaController iMediaController, int i2);

    void s0(IMediaController iMediaController, int i2, int i3);

    void t(IMediaController iMediaController, int i2, Surface surface, int i3, int i4);

    void u2(IMediaController iMediaController, int i2);

    void w2(IMediaController iMediaController, int i2, boolean z, int i3);

    void x0(IMediaController iMediaController, int i2, Bundle bundle, long j2);

    void x1(IMediaController iMediaController, int i2);

    void y(IMediaController iMediaController, int i2);

    void y0(IMediaController iMediaController, int i2, int i3);

    void y2(IMediaController iMediaController, int i2, Bundle bundle, Bundle bundle2);

    void z0(IMediaController iMediaController, int i2);
}
