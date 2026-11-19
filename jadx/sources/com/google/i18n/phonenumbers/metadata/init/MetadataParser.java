package com.google.i18n.phonenumbers.metadata.init;

import com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadataCollection;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class MetadataParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f35661a = Logger.getLogger(MetadataParser.class.getName());

    /* JADX WARN: Code duplicated, block: B:37:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static List a(InputStream inputStream) throws Throwable {
        Throwable th;
        IOException e2;
        Logger logger = f35661a;
        if (inputStream == null) {
            return Collections.EMPTY_LIST;
        }
        InputStream inputStream2 = null;
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(inputStream);
                try {
                    Phonemetadata$PhoneMetadataCollection phonemetadata$PhoneMetadataCollection = new Phonemetadata$PhoneMetadataCollection();
                    ArrayList arrayList = phonemetadata$PhoneMetadataCollection.f35639b;
                    phonemetadata$PhoneMetadataCollection.readExternal(objectInputStream);
                    if (arrayList.isEmpty()) {
                        throw new IllegalStateException("Empty metadata");
                    }
                    try {
                        objectInputStream.close();
                        return arrayList;
                    } catch (IOException e3) {
                        logger.log(Level.WARNING, "Error closing input stream (ignored)", (Throwable) e3);
                        return arrayList;
                    }
                } catch (IOException e4) {
                    e2 = e4;
                    throw new IllegalStateException("Unable to parse metadata file", e2);
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        inputStream2.close();
                    } catch (IOException e5) {
                        logger.log(Level.WARNING, "Error closing input stream (ignored)", (Throwable) e5);
                    }
                } else {
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                        logger.log(Level.WARNING, "Error closing input stream (ignored)", (Throwable) e6);
                    }
                }
                throw th;
            }
        } catch (IOException e7) {
            e2 = e7;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                inputStream2.close();
            } else {
                inputStream.close();
            }
            throw th;
        }
    }
}
