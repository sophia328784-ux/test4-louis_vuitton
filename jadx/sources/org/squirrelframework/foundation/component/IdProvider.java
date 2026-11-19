package org.squirrelframework.foundation.component;

import java.util.Random;
import java.util.UUID;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.RandomUtils;

/* JADX INFO: loaded from: classes3.dex */
public interface IdProvider {

    public static class Default implements IdProvider, SquirrelSingleton {
        private static IdProvider instance = new Default();

        public static IdProvider getInstance() {
            return instance;
        }

        public static void setInstance(IdProvider idProvider) {
            instance = idProvider;
        }

        @Override // org.squirrelframework.foundation.component.IdProvider
        public String get() {
            RandomStringUtils.f77538c.f77539a.getClass();
            return RandomStringUtils.a(true, true, null, (Random) RandomUtils.f77540b.f77542a.get());
        }
    }

    public static class UUIDProvider implements IdProvider, SquirrelSingleton {
        private static IdProvider instance = new UUIDProvider();

        public static IdProvider getInstance() {
            return instance;
        }

        public static void setInstance(IdProvider idProvider) {
            instance = idProvider;
        }

        @Override // org.squirrelframework.foundation.component.IdProvider
        public String get() {
            return UUID.randomUUID().toString();
        }
    }

    String get();
}
