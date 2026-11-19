package androidx.media3.session;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.HeartRating;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PercentageRating;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Rating;
import androidx.media3.common.StarRating;
import androidx.media3.common.ThumbRating;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserCompat;
import androidx.media3.session.legacy.MediaDescriptionCompat;
import androidx.media3.session.legacy.MediaMetadataCompat;
import androidx.media3.session.legacy.PlaybackStateCompat;
import androidx.media3.session.legacy.RatingCompat;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.ListenableFuture;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.pq0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
abstract class LegacyConversions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmutableSet f17303a = ImmutableSet.x("android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.DURATION", "android.media.metadata.ALBUM", "android.media.metadata.AUTHOR", "android.media.metadata.WRITER", "android.media.metadata.COMPOSER", "android.media.metadata.COMPILATION", "android.media.metadata.DATE", "android.media.metadata.YEAR", "android.media.metadata.GENRE", "android.media.metadata.TRACK_NUMBER", "android.media.metadata.NUM_TRACKS", "android.media.metadata.DISC_NUMBER", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.ART", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART", "android.media.metadata.ALBUM_ART_URI", "android.media.metadata.USER_RATING", "android.media.metadata.RATING", "android.media.metadata.DISPLAY_TITLE", "android.media.metadata.DISPLAY_SUBTITLE", "android.media.metadata.DISPLAY_DESCRIPTION", "android.media.metadata.DISPLAY_ICON", "android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.MEDIA_ID", "android.media.metadata.MEDIA_URI", "android.media.metadata.BT_FOLDER_TYPE", "android.media.metadata.ADVERTISEMENT", "android.media.metadata.DOWNLOAD_STATUS", "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT");

    public static class ConversionException extends Exception {
    }

    public static MediaBrowserCompat.MediaItem a(MediaItem mediaItem, Bitmap bitmap) {
        MediaDescriptionCompat mediaDescriptionCompatI = i(mediaItem, bitmap);
        MediaMetadata mediaMetadata = mediaItem.d;
        Boolean bool = mediaMetadata.r;
        int i2 = (bool == null || !bool.booleanValue()) ? 0 : 1;
        Boolean bool2 = mediaMetadata.s;
        if (bool2 != null && bool2.booleanValue()) {
            i2 |= 2;
        }
        return new MediaBrowserCompat.MediaItem(mediaDescriptionCompatI, i2);
    }

    public static long b(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat, long j2) {
        long j3 = playbackStateCompat == null ? 0L : playbackStateCompat.d;
        long jC = c(playbackStateCompat, mediaMetadataCompat, j2);
        long jD = d(mediaMetadataCompat);
        return jD == -9223372036854775807L ? Math.max(jC, j3) : Util.k(j3, jC, jD);
    }

    public static long c(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat, long j2) {
        if (playbackStateCompat == null) {
            return 0L;
        }
        long jMax = playbackStateCompat.f17831c;
        if (playbackStateCompat.f17830b == 3) {
            Long lValueOf = j2 == -9223372036854775807L ? null : Long.valueOf(j2);
            jMax = Math.max(0L, jMax + ((long) (playbackStateCompat.f17832e * (lValueOf != null ? lValueOf.longValue() : SystemClock.elapsedRealtime() - playbackStateCompat.f17835i))));
        }
        long j3 = jMax;
        long jD = d(mediaMetadataCompat);
        return jD == -9223372036854775807L ? Math.max(0L, j3) : Util.k(j3, 0L, jD);
    }

    public static long d(MediaMetadataCompat mediaMetadataCompat) {
        if (mediaMetadataCompat == null || !mediaMetadataCompat.f17796b.containsKey("android.media.metadata.DURATION")) {
            return -9223372036854775807L;
        }
        long jA = mediaMetadataCompat.a("android.media.metadata.DURATION");
        if (jA <= 0) {
            return -9223372036854775807L;
        }
        return jA;
    }

    public static long e(int i2) {
        switch (i2) {
            case 0:
                return 0L;
            case 1:
                return 1L;
            case 2:
                return 2L;
            case 3:
                return 3L;
            case 4:
                return 4L;
            case 5:
                return 5L;
            case 6:
                return 6L;
            default:
                md.n(pq0.k(i2, "Unrecognized FolderType: "));
                return 0L;
        }
    }

    public static int f(long j2) {
        if (j2 == 0) {
            return 0;
        }
        if (j2 == 1) {
            return 1;
        }
        if (j2 == 2) {
            return 2;
        }
        if (j2 == 3) {
            return 3;
        }
        if (j2 == 4) {
            return 4;
        }
        if (j2 == 5) {
            return 5;
        }
        return j2 == 6 ? 6 : 0;
    }

    public static int g(int i2) {
        if (i2 == -110) {
            return 8;
        }
        if (i2 == -109) {
            return 11;
        }
        if (i2 == -6) {
            return 2;
        }
        if (i2 == -2) {
            return 1;
        }
        if (i2 == 1) {
            return 10;
        }
        switch (i2) {
            case -107:
                return 9;
            case -106:
                return 7;
            case -105:
                return 6;
            case -104:
                return 5;
            case -103:
                return 4;
            case -102:
                return 3;
            default:
                return 0;
        }
    }

    public static MediaLibraryService$LibraryParams h(Context context, Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        try {
            bundle.setClassLoader(context.getClassLoader());
            int i2 = bundle.getInt("androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS", -1);
            if (i2 >= 0) {
                bundle.remove("androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS");
                boolean z = true;
                if (i2 != 1) {
                    z = false;
                }
                bundle.putBoolean("androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY", z);
            }
            MediaLibraryService$LibraryParams.Builder builder = new MediaLibraryService$LibraryParams.Builder();
            builder.d = bundle;
            builder.f17374a = bundle.getBoolean("android.service.media.extra.RECENT");
            builder.f17375b = bundle.getBoolean("android.service.media.extra.OFFLINE");
            builder.f17376c = bundle.getBoolean("android.service.media.extra.SUGGESTED");
            return new MediaLibraryService$LibraryParams(builder.d, builder.f17374a, builder.f17375b, builder.f17376c);
        } catch (Exception unused) {
            MediaLibraryService$LibraryParams.Builder builder2 = new MediaLibraryService$LibraryParams.Builder();
            builder2.d = bundle;
            return new MediaLibraryService$LibraryParams(builder2.d, builder2.f17374a, builder2.f17375b, builder2.f17376c);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:50:0x00c0  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static MediaDescriptionCompat i(MediaItem mediaItem, Bitmap bitmap) {
        int i2;
        CharSequence charSequence;
        MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
        builder.f17788a = mediaItem.f13787a.equals("") ? null : mediaItem.f13787a;
        MediaMetadata mediaMetadata = mediaItem.d;
        if (bitmap != null) {
            builder.f17791e = bitmap;
        }
        Bundle bundle = mediaMetadata.J;
        CharSequence charSequence2 = mediaMetadata.f13879a;
        CharSequence charSequence3 = mediaMetadata.g;
        CharSequence charSequence4 = mediaMetadata.f13883f;
        ImmutableList immutableList = mediaMetadata.K;
        Integer num = mediaMetadata.I;
        Integer num2 = mediaMetadata.q;
        if (bundle != null) {
            bundle = new Bundle(bundle);
        }
        boolean z = (num2 == null || num2.intValue() == -1) ? false : true;
        boolean z2 = num != null;
        if (z || z2) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            if (z) {
                num2.getClass();
                i2 = 0;
                bundle.putLong("android.media.extra.BT_FOLDER_TYPE", e(num2.intValue()));
            } else {
                i2 = 0;
            }
            if (z2) {
                num.getClass();
                bundle.putLong("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT", num.intValue());
            }
        } else {
            i2 = 0;
        }
        if (!immutableList.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putStringArrayList("androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST", new ArrayList<>(immutableList));
        }
        CharSequence charSequence5 = mediaMetadata.f13882e;
        if (charSequence5 != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putCharSequence("androidx.media3.mediadescriptioncompat.title", charSequence2);
        } else {
            CharSequence[] charSequenceArr = new CharSequence[3];
            int i3 = i2;
            int i4 = i3;
            while (true) {
                int i5 = 2;
                if (i3 < 3) {
                    String[] strArr = MediaMetadataCompat.f17795f;
                    if (i4 < strArr.length) {
                        int i6 = i4 + 1;
                        String str = strArr[i4];
                        str.getClass();
                        switch (str.hashCode()) {
                            case -1853648227:
                                if (!str.equals("android.media.metadata.ARTIST")) {
                                    i5 = -1;
                                } else {
                                    i5 = i2;
                                }
                                break;
                            case -1850878751:
                                if (!str.equals("android.media.metadata.AUTHOR")) {
                                    i5 = -1;
                                } else {
                                    i5 = 1;
                                }
                                break;
                            case -1224124471:
                                if (!str.equals("android.media.metadata.WRITER")) {
                                    i5 = -1;
                                }
                                break;
                            case 194702059:
                                if (!str.equals("android.media.metadata.DISPLAY_SUBTITLE")) {
                                    i5 = -1;
                                } else {
                                    i5 = 3;
                                }
                                break;
                            case 1058837545:
                                if (!str.equals("android.media.metadata.DISPLAY_DESCRIPTION")) {
                                    i5 = -1;
                                } else {
                                    i5 = 4;
                                }
                                break;
                            case 1684534006:
                                if (!str.equals("android.media.metadata.COMPOSER")) {
                                    i5 = -1;
                                } else {
                                    i5 = 5;
                                }
                                break;
                            case 1879671865:
                                if (!str.equals("android.media.metadata.ALBUM")) {
                                    i5 = -1;
                                } else {
                                    i5 = 6;
                                }
                                break;
                            case 1897146402:
                                if (!str.equals("android.media.metadata.TITLE")) {
                                    i5 = -1;
                                } else {
                                    i5 = 7;
                                }
                                break;
                            case 1965214221:
                                if (!str.equals("android.media.metadata.ALBUM_ARTIST")) {
                                    i5 = -1;
                                } else {
                                    i5 = 8;
                                }
                                break;
                            default:
                                i5 = -1;
                                break;
                        }
                        switch (i5) {
                            case 0:
                                charSequence = mediaMetadata.f13880b;
                                break;
                            case 1:
                            default:
                                charSequence = null;
                                break;
                            case 2:
                                charSequence = mediaMetadata.A;
                                break;
                            case 3:
                                charSequence = charSequence4;
                                break;
                            case 4:
                                charSequence = charSequence3;
                                break;
                            case 5:
                                charSequence = mediaMetadata.B;
                                break;
                            case 6:
                                charSequence = mediaMetadata.f13881c;
                                break;
                            case 7:
                                charSequence = charSequence2;
                                break;
                            case 8:
                                charSequence = mediaMetadata.d;
                                break;
                        }
                        if (!TextUtils.isEmpty(charSequence)) {
                            charSequenceArr[i3] = charSequence;
                            i3++;
                        }
                        i4 = i6;
                    }
                }
            }
            charSequence5 = charSequenceArr[i2];
            charSequence4 = charSequenceArr[1];
            charSequence3 = charSequenceArr[2];
        }
        CharSequence charSequence6 = charSequence3;
        CharSequence charSequence7 = charSequence4;
        CharSequence charSequence8 = charSequence5;
        builder.f17789b = charSequence8;
        builder.f17790c = charSequence7;
        builder.d = charSequence6;
        Uri uri = mediaMetadata.n;
        builder.f17792f = uri;
        Uri uri2 = mediaItem.f13791f.f13857a;
        builder.f17793h = uri2;
        builder.g = bundle;
        return new MediaDescriptionCompat(builder.f17788a, charSequence8, charSequence7, charSequence6, builder.f17791e, uri, bundle, uri2);
    }

    public static MediaItem j(MediaDescriptionCompat mediaDescriptionCompat) {
        mediaDescriptionCompat.getClass();
        String str = mediaDescriptionCompat.f17780b;
        MediaItem.Builder builder = new MediaItem.Builder();
        if (str == null) {
            str = "";
        }
        builder.f13795a = str;
        MediaItem.RequestMetadata.Builder builder2 = new MediaItem.RequestMetadata.Builder();
        builder2.f13860a = mediaDescriptionCompat.f17786j;
        builder.n = new MediaItem.RequestMetadata(builder2);
        builder.l = l(mediaDescriptionCompat, 0);
        return builder.a();
    }

    public static MediaItem k(String str, MediaMetadataCompat mediaMetadataCompat, int i2) {
        MediaItem.Builder builder = new MediaItem.Builder();
        if (str != null) {
            builder.f13795a = str;
        }
        CharSequence charSequence = mediaMetadataCompat.f17796b.getCharSequence("android.media.metadata.MEDIA_URI");
        String string = charSequence != null ? charSequence.toString() : null;
        if (string != null) {
            MediaItem.RequestMetadata.Builder builder2 = new MediaItem.RequestMetadata.Builder();
            builder2.f13860a = Uri.parse(string);
            builder.n = new MediaItem.RequestMetadata(builder2);
        }
        builder.l = m(mediaMetadataCompat, i2);
        return builder.a();
    }

    public static MediaMetadata l(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
        RatingCompat ratingCompat;
        byte[] bArr;
        if (mediaDescriptionCompat == null) {
            return MediaMetadata.L;
        }
        CharSequence charSequence = mediaDescriptionCompat.f17781c;
        MediaMetadata.Builder builder = new MediaMetadata.Builder();
        builder.f13892f = mediaDescriptionCompat.d;
        builder.g = mediaDescriptionCompat.f17782e;
        builder.n = mediaDescriptionCompat.f17784h;
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                ratingCompat = new RatingCompat(i2, -1.0f);
                break;
            default:
                ratingCompat = null;
                break;
        }
        builder.f13894i = q(ratingCompat);
        Bitmap bitmap = mediaDescriptionCompat.f17783f;
        if (bitmap == null) {
            bArr = null;
        } else {
            if (mediaDescriptionCompat.g == null) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
                        mediaDescriptionCompat.g = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    Log.h("Failed to compress MediaDescriptionCompat artwork", e2);
                }
            }
            bArr = mediaDescriptionCompat.g;
        }
        if (bArr != null) {
            builder.b(bArr, 3);
        }
        Bundle bundle = mediaDescriptionCompat.f17785i;
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : null;
        if (bundle2 != null && bundle2.containsKey("android.media.extra.BT_FOLDER_TYPE")) {
            builder.q = Integer.valueOf(f(bundle2.getLong("android.media.extra.BT_FOLDER_TYPE")));
            bundle2.remove("android.media.extra.BT_FOLDER_TYPE");
        }
        builder.r = Boolean.FALSE;
        if (bundle2 != null && bundle2.containsKey("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT")) {
            builder.H = Integer.valueOf((int) bundle2.getLong("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"));
            bundle2.remove("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT");
        }
        if (bundle2 != null && bundle2.containsKey("androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST")) {
            ArrayList<String> stringArrayList = bundle2.getStringArrayList("androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ID_LIST");
            stringArrayList.getClass();
            builder.J = ImmutableList.t(ImmutableList.t(stringArrayList));
        }
        if (bundle2 == null || !bundle2.containsKey("androidx.media3.mediadescriptioncompat.title")) {
            builder.f13888a = charSequence;
        } else {
            builder.f13888a = bundle2.getCharSequence("androidx.media3.mediadescriptioncompat.title");
            builder.f13891e = charSequence;
            bundle2.remove("androidx.media3.mediadescriptioncompat.title");
        }
        if (bundle2 != null && !bundle2.isEmpty()) {
            builder.I = bundle2;
        }
        builder.s = Boolean.TRUE;
        return new MediaMetadata(builder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static MediaMetadata m(MediaMetadataCompat mediaMetadataCompat, int i2) {
        CharSequence charSequence;
        CharSequence charSequence2;
        RatingCompat ratingCompatA;
        RatingCompat ratingCompatA2;
        RatingCompat ratingCompat;
        String[] strArr;
        int i3;
        String string;
        if (mediaMetadataCompat == null) {
            return MediaMetadata.L;
        }
        Bundle bundle = mediaMetadataCompat.f17796b;
        MediaMetadata.Builder builder = new MediaMetadata.Builder();
        CharSequence charSequence3 = bundle.getCharSequence("android.media.metadata.DISPLAY_TITLE");
        if (charSequence3 != null) {
            charSequence2 = bundle.getCharSequence("android.media.metadata.DISPLAY_SUBTITLE");
            charSequence = bundle.getCharSequence("android.media.metadata.DISPLAY_DESCRIPTION");
        } else {
            CharSequence[] charSequenceArr = new CharSequence[3];
            int i4 = 0;
            int i5 = 0;
            while (i4 < 3) {
                String[] strArr2 = MediaMetadataCompat.f17795f;
                if (i5 >= strArr2.length) {
                    break;
                }
                int i6 = i5 + 1;
                CharSequence charSequence4 = bundle.getCharSequence(strArr2[i5]);
                if (!TextUtils.isEmpty(charSequence4)) {
                    charSequenceArr[i4] = charSequence4;
                    i4++;
                }
                i5 = i6;
            }
            CharSequence charSequence5 = charSequenceArr[0];
            CharSequence charSequence6 = charSequenceArr[1];
            charSequence = charSequenceArr[2];
            charSequence3 = charSequence5;
            charSequence2 = charSequence6;
        }
        CharSequence charSequence7 = bundle.getCharSequence("android.media.metadata.TITLE");
        if (charSequence7 == null) {
            charSequence7 = charSequence3;
        }
        builder.f13888a = charSequence7;
        builder.f13891e = charSequence3;
        builder.f13892f = charSequence2;
        builder.g = charSequence;
        builder.f13889b = bundle.getCharSequence("android.media.metadata.ARTIST");
        builder.f13890c = bundle.getCharSequence("android.media.metadata.ALBUM");
        builder.d = bundle.getCharSequence("android.media.metadata.ALBUM_ARTIST");
        byte[] bArr = null;
        try {
            ratingCompatA = RatingCompat.a(bundle.getParcelable("android.media.metadata.RATING"));
        } catch (Exception e2) {
            Log.h("Failed to retrieve a key as Rating.", e2);
            ratingCompatA = null;
        }
        builder.f13895j = q(ratingCompatA);
        if (bundle.containsKey("android.media.metadata.DURATION")) {
            long jA = mediaMetadataCompat.a("android.media.metadata.DURATION");
            if (jA >= 0) {
                builder.c(Long.valueOf(jA));
            }
        }
        try {
            ratingCompatA2 = RatingCompat.a(bundle.getParcelable("android.media.metadata.USER_RATING"));
            while (true) {
                if (i3 < 3) {
                    String str = strArr[i3];
                    if (bundle.containsKey(str)) {
                        CharSequence charSequence8 = bundle.getCharSequence(str);
                        if (charSequence8 != null) {
                            string = charSequence8.toString();
                        }
                    } else {
                        i3++;
                    }
                }
                string = null;
            }
        } catch (Exception e3) {
            Log.h("Failed to retrieve a key as Rating.", e3);
            ratingCompatA2 = null;
        }
        Rating ratingQ = q(ratingCompatA2);
        if (ratingQ != null) {
            builder.f13894i = ratingQ;
        } else {
            switch (i2) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    ratingCompat = new RatingCompat(i2, -1.0f);
                    break;
                default:
                    ratingCompat = null;
                    break;
            }
            builder.f13894i = q(ratingCompat);
        }
        if (bundle.containsKey("android.media.metadata.YEAR")) {
            builder.t = Integer.valueOf((int) mediaMetadataCompat.a("android.media.metadata.YEAR"));
        }
        strArr = new String[]{"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ALBUM_ART_URI", "android.media.metadata.ART_URI"};
        i3 = 0;
        Uri uri = string != null ? Uri.parse(string) : null;
        if (uri != null) {
            builder.n = uri;
        }
        Bitmap bitmapB = mediaMetadataCompat.b();
        if (bitmapB != null) {
            if (mediaMetadataCompat.d == null) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        bitmapB.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
                        mediaMetadataCompat.d = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    Log.h("Failed to compress MediaMetadataCompat artwork", e4);
                }
            }
            bArr = mediaMetadataCompat.d;
        }
        if (bArr != null) {
            builder.b(bArr, 3);
        }
        boolean zContainsKey = bundle.containsKey("android.media.metadata.BT_FOLDER_TYPE");
        builder.r = Boolean.valueOf(zContainsKey);
        if (zContainsKey) {
            builder.q = Integer.valueOf(f(mediaMetadataCompat.a("android.media.metadata.BT_FOLDER_TYPE")));
        }
        if (bundle.containsKey("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT")) {
            builder.H = Integer.valueOf((int) mediaMetadataCompat.a("androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT"));
        }
        builder.s = Boolean.TRUE;
        Bundle bundle2 = new Bundle(bundle);
        UnmodifiableIterator it = f17303a.iterator();
        while (it.hasNext()) {
            bundle2.remove((String) it.next());
        }
        if (!bundle2.isEmpty()) {
            builder.I = bundle2;
        }
        return new MediaMetadata(builder);
    }

    public static MediaMetadataCompat n(MediaMetadata mediaMetadata, String str, Uri uri, long j2, Bitmap bitmap) {
        Long l;
        MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
        builder.d("android.media.metadata.MEDIA_ID", str);
        CharSequence charSequence = mediaMetadata.f13879a;
        Bundle bundle = mediaMetadata.J;
        Integer num = mediaMetadata.q;
        Uri uri2 = mediaMetadata.n;
        if (charSequence != null) {
            builder.e(charSequence, "android.media.metadata.TITLE");
        }
        CharSequence charSequence2 = mediaMetadata.f13882e;
        if (charSequence2 != null) {
            builder.e(charSequence2, "android.media.metadata.DISPLAY_TITLE");
        }
        CharSequence charSequence3 = mediaMetadata.f13883f;
        if (charSequence3 != null) {
            builder.e(charSequence3, "android.media.metadata.DISPLAY_SUBTITLE");
        }
        CharSequence charSequence4 = mediaMetadata.g;
        if (charSequence4 != null) {
            builder.e(charSequence4, "android.media.metadata.DISPLAY_DESCRIPTION");
        }
        CharSequence charSequence5 = mediaMetadata.f13880b;
        if (charSequence5 != null) {
            builder.e(charSequence5, "android.media.metadata.ARTIST");
        }
        CharSequence charSequence6 = mediaMetadata.f13881c;
        if (charSequence6 != null) {
            builder.e(charSequence6, "android.media.metadata.ALBUM");
        }
        CharSequence charSequence7 = mediaMetadata.d;
        if (charSequence7 != null) {
            builder.e(charSequence7, "android.media.metadata.ALBUM_ARTIST");
        }
        Integer num2 = mediaMetadata.u;
        if (num2 != null) {
            builder.b(num2.intValue(), "android.media.metadata.YEAR");
        }
        CharSequence charSequence8 = mediaMetadata.A;
        if (charSequence8 != null) {
            builder.e(charSequence8, "android.media.metadata.WRITER");
        }
        CharSequence charSequence9 = mediaMetadata.B;
        if (charSequence9 != null) {
            builder.e(charSequence9, "android.media.metadata.COMPOSER");
        }
        if (uri != null) {
            builder.d("android.media.metadata.MEDIA_URI", uri.toString());
        }
        if (uri2 != null) {
            builder.d("android.media.metadata.DISPLAY_ICON_URI", uri2.toString());
            builder.d("android.media.metadata.ALBUM_ART_URI", uri2.toString());
            builder.d("android.media.metadata.ART_URI", uri2.toString());
        }
        if (bitmap != null) {
            builder.a(bitmap, "android.media.metadata.DISPLAY_ICON");
            builder.a(bitmap, "android.media.metadata.ALBUM_ART");
        }
        if (num != null && num.intValue() != -1) {
            builder.b(e(num.intValue()), "android.media.metadata.BT_FOLDER_TYPE");
        }
        if (j2 == -9223372036854775807L && (l = mediaMetadata.f13884h) != null) {
            j2 = l.longValue();
        }
        if (j2 == -9223372036854775807L) {
            j2 = -1;
        }
        builder.b(j2, "android.media.metadata.DURATION");
        RatingCompat ratingCompatR = r(mediaMetadata.f13885i);
        if (ratingCompatR != null) {
            builder.c("android.media.metadata.USER_RATING", ratingCompatR);
        }
        RatingCompat ratingCompatR2 = r(mediaMetadata.f13886j);
        if (ratingCompatR2 != null) {
            builder.c("android.media.metadata.RATING", ratingCompatR2);
        }
        Integer num3 = mediaMetadata.I;
        if (num3 != null) {
            builder.b(num3.intValue(), "androidx.media3.session.EXTRAS_KEY_MEDIA_TYPE_COMPAT");
        }
        if (bundle != null) {
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                if (obj == null || (obj instanceof CharSequence)) {
                    builder.e((CharSequence) obj, str2);
                } else if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long)) {
                    builder.b(((Number) obj).longValue(), str2);
                }
            }
        }
        return new MediaMetadataCompat(builder.f17798a);
    }

    public static PlaybackException o(PlaybackStateCompat playbackStateCompat, Context context) {
        if (playbackStateCompat != null) {
            int i2 = playbackStateCompat.g;
            if (playbackStateCompat.f17830b == 7) {
                CharSequence charSequenceX = playbackStateCompat.f17834h;
                if (charSequenceX == null) {
                    charSequenceX = x(t(i2), context);
                }
                Bundle bundle = playbackStateCompat.l;
                String string = charSequenceX != null ? charSequenceX.toString() : null;
                int iT = t(i2);
                if (iT == -5) {
                    iT = com.networkbench.agent.impl.util.r.E;
                } else if (iT == -1) {
                    iT = 1000;
                }
                if (bundle == null) {
                    bundle = Bundle.EMPTY;
                }
                return new PlaybackException(string, null, iT, bundle);
            }
        }
        return null;
    }

    public static int p(int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                Log.g("Unrecognized RepeatMode: " + i2 + " was converted to `PlaybackStateCompat.REPEAT_MODE_NONE`");
                return 0;
            }
        }
        return i3;
    }

    public static Rating q(RatingCompat ratingCompat) {
        if (ratingCompat == null) {
            return null;
        }
        float f2 = ratingCompat.f17855c;
        int i2 = ratingCompat.f17854b;
        switch (i2) {
            case 1:
                if (ratingCompat.c()) {
                    return new HeartRating(i2 == 1 && f2 == 1.0f);
                }
                return new HeartRating();
            case 2:
                if (ratingCompat.c()) {
                    return new ThumbRating(i2 == 2 && f2 == 1.0f);
                }
                return new ThumbRating();
            case 3:
                return ratingCompat.c() ? new StarRating(3, ratingCompat.b()) : new StarRating(3);
            case 4:
                return ratingCompat.c() ? new StarRating(4, ratingCompat.b()) : new StarRating(4);
            case 5:
                return ratingCompat.c() ? new StarRating(5, ratingCompat.b()) : new StarRating(5);
            case 6:
                if (!ratingCompat.c()) {
                    return new PercentageRating();
                }
                if (i2 != 6 || !ratingCompat.c()) {
                    f2 = -1.0f;
                }
                return new PercentageRating(f2);
            default:
                return null;
        }
    }

    public static RatingCompat r(Rating rating) {
        if (rating != null) {
            int iW = w(rating);
            if (!rating.b()) {
                switch (iW) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        return new RatingCompat(iW, -1.0f);
                    default:
                        return null;
                }
            }
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            switch (iW) {
                case 1:
                    if (((HeartRating) rating).f13779c) {
                        f2 = 1.0f;
                    }
                    return new RatingCompat(1, f2);
                case 2:
                    if (((ThumbRating) rating).f13951c) {
                        f2 = 1.0f;
                    }
                    return new RatingCompat(2, f2);
                case 3:
                case 4:
                case 5:
                    return RatingCompat.e(((StarRating) rating).f13940c, iW);
                case 6:
                    return RatingCompat.d(((PercentageRating) rating).f13909b);
            }
        }
        return null;
    }

    public static int s(int i2) {
        if (i2 == -1 || i2 == 0) {
            return 0;
        }
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2 && i2 != 3) {
                Log.g("Unrecognized PlaybackStateCompat.RepeatMode: " + i2 + " was converted to `Player.REPEAT_MODE_OFF`");
                return 0;
            }
        }
        return i3;
    }

    public static int t(int i2) {
        switch (i2) {
            case 1:
                return -2;
            case 2:
                return -6;
            case 3:
                return -102;
            case 4:
                return -103;
            case 5:
                return -104;
            case 6:
                return -105;
            case 7:
                return -106;
            case 8:
                return -110;
            case 9:
                return -107;
            case 10:
                return 1;
            case 11:
                return -109;
            default:
                return -1;
        }
    }

    public static boolean u(int i2) {
        if (i2 == -1 || i2 == 0) {
            return false;
        }
        if (i2 == 1 || i2 == 2) {
            return true;
        }
        md.n(pq0.k(i2, "Unrecognized ShuffleMode: "));
        return false;
    }

    public static void v(ListenableFuture listenableFuture) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = false;
        long j2 = 3000;
        while (true) {
            try {
                try {
                    listenableFuture.get(j2, TimeUnit.MILLISECONDS);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                } catch (InterruptedException unused) {
                    z = true;
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                    if (jElapsedRealtime2 >= HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD) {
                        throw new TimeoutException();
                    }
                    j2 = HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD - jElapsedRealtime2;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
    }

    public static int w(Rating rating) {
        if (rating instanceof HeartRating) {
            return 1;
        }
        if (rating instanceof ThumbRating) {
            return 2;
        }
        if (!(rating instanceof StarRating)) {
            return rating instanceof PercentageRating ? 6 : 0;
        }
        int i2 = ((StarRating) rating).f13939b;
        int i3 = 3;
        if (i2 != 3) {
            i3 = 4;
            if (i2 != 4) {
                i3 = 5;
                if (i2 != 5) {
                    return 0;
                }
            }
        }
        return i3;
    }

    public static String x(int i2, Context context) {
        if (i2 == -100) {
            return context.getString(R.string.error_message_disconnected);
        }
        if (i2 == 1) {
            return context.getString(R.string.error_message_info_cancelled);
        }
        if (i2 == -6) {
            return context.getString(R.string.error_message_not_supported);
        }
        if (i2 == -5) {
            return context.getString(R.string.error_message_io);
        }
        if (i2 == -4) {
            return context.getString(R.string.error_message_permission_denied);
        }
        if (i2 == -3) {
            return context.getString(R.string.error_message_bad_value);
        }
        if (i2 == -2) {
            return context.getString(R.string.error_message_invalid_state);
        }
        switch (i2) {
            case -110:
                return context.getString(R.string.error_message_content_already_playing);
            case -109:
                return context.getString(R.string.error_message_end_of_playlist);
            case -108:
                return context.getString(R.string.error_message_setup_required);
            case -107:
                return context.getString(R.string.error_message_skip_limit_reached);
            case -106:
                return context.getString(R.string.error_message_not_available_in_region);
            case -105:
                return context.getString(R.string.error_message_parental_control_restricted);
            case -104:
                return context.getString(R.string.error_message_concurrent_stream_limit);
            case -103:
                return context.getString(R.string.error_message_premium_account_required);
            case -102:
                return context.getString(R.string.error_message_authentication_expired);
            default:
                return context.getString(R.string.error_message_fallback);
        }
    }

    public static boolean y(long j2, long j3) {
        return (j2 & j3) != 0;
    }
}
