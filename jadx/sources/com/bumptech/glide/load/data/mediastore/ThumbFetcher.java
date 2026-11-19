package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.ExifOrientationStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class ThumbFetcher implements DataFetcher<InputStream> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f24424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThumbnailStreamOpener f24425c;
    public InputStream d;

    public static class ImageThumbnailQuery implements ThumbnailQuery {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f24426b = {"_data"};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f24427a;

        public ImageThumbnailQuery(ContentResolver contentResolver) {
            this.f24427a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public final Cursor a(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.f24427a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f24426b, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    public static class VideoThumbnailQuery implements ThumbnailQuery {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f24428b = {"_data"};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f24429a;

        public VideoThumbnailQuery(ContentResolver contentResolver) {
            this.f24429a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.ThumbnailQuery
        public final Cursor a(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.f24429a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f24428b, "kind = 1 AND video_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    public ThumbFetcher(Uri uri, ThumbnailStreamOpener thumbnailStreamOpener) {
        this.f24424b = uri;
        this.f24425c = thumbnailStreamOpener;
    }

    public static ThumbFetcher c(Context context, Uri uri, ThumbnailQuery thumbnailQuery) {
        return new ThumbFetcher(uri, new ThumbnailStreamOpener(Glide.a(context).d.a().b(), thumbnailQuery, Glide.a(context).f24278e, context.getContentResolver()));
    }

    public static ThumbFetcher f(Context context, Uri uri) {
        return c(context, uri, new ImageThumbnailQuery(context.getContentResolver()));
    }

    public static ThumbFetcher g(Context context, Uri uri) {
        return c(context, uri, new VideoThumbnailQuery(context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void b() {
        InputStream inputStream = this.d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final DataSource d() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void e(Priority priority, DataFetcher.DataCallback dataCallback) throws Throwable {
        try {
            InputStream inputStreamH = h();
            this.d = inputStreamH;
            dataCallback.f(inputStreamH);
        } catch (FileNotFoundException e2) {
            Log.isLoggable("MediaStoreThumbFetcher", 3);
            dataCallback.c(e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0042  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044  */
    /* JADX WARN: Code duplicated, block: B:27:0x004f  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:57:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:68:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0022: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:10:0x0022 */
    public final InputStream h() throws Throwable {
        Cursor cursorA;
        Cursor cursor;
        String string;
        File file;
        InputStream inputStreamOpenInputStream;
        int iC;
        ThumbnailStreamOpener thumbnailStreamOpener = this.f24425c;
        ContentResolver contentResolver = thumbnailStreamOpener.f24433c;
        Uri uri = this.f24424b;
        Cursor cursor2 = null;
        inputStreamOpenInputStream = null;
        inputStreamOpenInputStream = null;
        InputStream inputStreamOpenInputStream2 = null;
        try {
            try {
                try {
                    cursorA = thumbnailStreamOpener.f24431a.a(uri);
                    if (cursorA != null) {
                        try {
                            if (cursorA.moveToFirst()) {
                                string = cursorA.getString(0);
                                cursorA.close();
                            }
                        } catch (SecurityException unused) {
                            if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                Objects.toString(uri);
                            }
                            if (cursorA != null) {
                            }
                            string = null;
                            if (TextUtils.isEmpty(string)) {
                                inputStreamOpenInputStream = null;
                            } else {
                                file = new File(string);
                                if (file.exists()) {
                                    inputStreamOpenInputStream = null;
                                } else {
                                    inputStreamOpenInputStream = null;
                                }
                            }
                            if (inputStreamOpenInputStream != null) {
                                try {
                                    inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                                    iC = ImageHeaderParserUtils.c(thumbnailStreamOpener.d, inputStreamOpenInputStream2, thumbnailStreamOpener.f24432b);
                                    if (inputStreamOpenInputStream2 != null) {
                                        try {
                                            inputStreamOpenInputStream2.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                } catch (IOException | NullPointerException unused3) {
                                    if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                        Objects.toString(uri);
                                    }
                                    if (inputStreamOpenInputStream2 != null) {
                                        try {
                                            inputStreamOpenInputStream2.close();
                                        } catch (IOException unused4) {
                                        }
                                    }
                                    iC = -1;
                                }
                            } else {
                                iC = -1;
                            }
                            if (iC != -1) {
                                return new ExifOrientationStream(inputStreamOpenInputStream, iC);
                            }
                            return inputStreamOpenInputStream;
                        }
                        if (TextUtils.isEmpty(string)) {
                            inputStreamOpenInputStream = null;
                        } else {
                            file = new File(string);
                            if (file.exists() || 0 >= file.length()) {
                                inputStreamOpenInputStream = null;
                            } else {
                                Uri uriFromFile = Uri.fromFile(file);
                                try {
                                    inputStreamOpenInputStream = contentResolver.openInputStream(uriFromFile);
                                } catch (NullPointerException e2) {
                                    throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e2));
                                }
                            }
                        }
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                            iC = ImageHeaderParserUtils.c(thumbnailStreamOpener.d, inputStreamOpenInputStream2, thumbnailStreamOpener.f24432b);
                            if (inputStreamOpenInputStream2 != null) {
                                inputStreamOpenInputStream2.close();
                            }
                        } else {
                            iC = -1;
                        }
                        if (iC != -1) {
                            return new ExifOrientationStream(inputStreamOpenInputStream, iC);
                        }
                        return inputStreamOpenInputStream;
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SecurityException unused5) {
                cursorA = null;
            } catch (Throwable th2) {
                th = th2;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
            if (inputStreamOpenInputStream != null) {
                inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                iC = ImageHeaderParserUtils.c(thumbnailStreamOpener.d, inputStreamOpenInputStream2, thumbnailStreamOpener.f24432b);
                if (inputStreamOpenInputStream2 != null) {
                    inputStreamOpenInputStream2.close();
                }
            } else {
                iC = -1;
            }
            if (iC != -1) {
                return new ExifOrientationStream(inputStreamOpenInputStream, iC);
            }
            return inputStreamOpenInputStream;
        } catch (Throwable th3) {
            if (inputStreamOpenInputStream2 != null) {
                try {
                    inputStreamOpenInputStream2.close();
                } catch (IOException unused6) {
                }
            }
            throw th3;
        }
        string = null;
        if (TextUtils.isEmpty(string)) {
            inputStreamOpenInputStream = null;
        } else {
            file = new File(string);
            if (file.exists()) {
                inputStreamOpenInputStream = null;
            } else {
                inputStreamOpenInputStream = null;
            }
        }
    }
}
