package com.google.i18n.phonenumbers.metadata.init;

import com.google.i18n.phonenumbers.MetadataLoader;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class ClassPathResourceMetadataLoader implements MetadataLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f35660a = Logger.getLogger(ClassPathResourceMetadataLoader.class.getName());

    @Override // com.google.i18n.phonenumbers.MetadataLoader
    public final InputStream a(String str) {
        InputStream resourceAsStream = ClassPathResourceMetadataLoader.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            f35660a.log(Level.WARNING, "File " + str + " not found");
        }
        return resourceAsStream;
    }
}
