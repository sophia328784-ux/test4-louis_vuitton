package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.IOException;
import java.io.InputStream;
import kotlin.Pair;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsPackageFragment;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class BuiltInsPackageFragmentImpl extends DeserializedPackageFragmentImpl implements BuiltInsPackageFragment {
    public static final Companion o = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0058  */
        public static BuiltInsPackageFragmentImpl a(FqName fqName, StorageManager storageManager, ModuleDescriptor moduleDescriptor, InputStream inputStream, boolean z) throws IOException {
            ProtoBuf$PackageFragment protoBuf$PackageFragment;
            MessageLite messageLite;
            fqName.getClass();
            storageManager.getClass();
            moduleDescriptor.getClass();
            try {
                BuiltInsBinaryVersion.f73558f.getClass();
                BuiltInsBinaryVersion builtInsBinaryVersionA = BuiltInsBinaryVersion.Companion.a(inputStream);
                BuiltInsBinaryVersion builtInsBinaryVersion = BuiltInsBinaryVersion.g;
                int i2 = builtInsBinaryVersionA.f73570c;
                builtInsBinaryVersion.getClass();
                int i3 = builtInsBinaryVersion.f73570c;
                int i4 = builtInsBinaryVersionA.f73569b;
                int i5 = builtInsBinaryVersion.f73569b;
                if (i4 == 0) {
                    if (i5 == 0 && i2 == i3) {
                        ExtensionRegistryLite extensionRegistryLite = new ExtensionRegistryLite();
                        BuiltInsProtoBuf.a(extensionRegistryLite);
                        AbstractParser abstractParser = (AbstractParser) ProtoBuf$PackageFragment.l;
                        abstractParser.getClass();
                        CodedInputStream codedInputStream = new CodedInputStream(inputStream);
                        messageLite = (MessageLite) abstractParser.a(codedInputStream, extensionRegistryLite);
                        try {
                            codedInputStream.a(0);
                            AbstractParser.c(messageLite);
                            protoBuf$PackageFragment = (ProtoBuf$PackageFragment) messageLite;
                        } catch (InvalidProtocolBufferException e2) {
                            e2.f73743b = messageLite;
                            throw e2;
                        }
                    } else {
                        protoBuf$PackageFragment = null;
                    }
                } else if (i4 != i5 || i2 > i3) {
                    protoBuf$PackageFragment = null;
                } else {
                    ExtensionRegistryLite extensionRegistryLite2 = new ExtensionRegistryLite();
                    BuiltInsProtoBuf.a(extensionRegistryLite2);
                    AbstractParser abstractParser2 = (AbstractParser) ProtoBuf$PackageFragment.l;
                    abstractParser2.getClass();
                    CodedInputStream codedInputStream2 = new CodedInputStream(inputStream);
                    messageLite = (MessageLite) abstractParser2.a(codedInputStream2, extensionRegistryLite2);
                    codedInputStream2.a(0);
                    AbstractParser.c(messageLite);
                    protoBuf$PackageFragment = (ProtoBuf$PackageFragment) messageLite;
                }
                Pair pair = new Pair(protoBuf$PackageFragment, builtInsBinaryVersionA);
                inputStream.close();
                ProtoBuf$PackageFragment protoBuf$PackageFragment2 = (ProtoBuf$PackageFragment) pair.f71705b;
                BuiltInsBinaryVersion builtInsBinaryVersion2 = (BuiltInsBinaryVersion) pair.f71706c;
                if (protoBuf$PackageFragment2 != null) {
                    return new BuiltInsPackageFragmentImpl(fqName, storageManager, moduleDescriptor, protoBuf$PackageFragment2, builtInsBinaryVersion2, z, null);
                }
                throw new UnsupportedOperationException("Kotlin built-in definition format version is not supported: expected " + builtInsBinaryVersion + ", actual " + builtInsBinaryVersion2 + ". Please update Kotlin");
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(inputStream, th);
                    throw th2;
                }
            }
        }
    }

    public BuiltInsPackageFragmentImpl(FqName fqName, StorageManager storageManager, ModuleDescriptor moduleDescriptor, ProtoBuf$PackageFragment protoBuf$PackageFragment, BuiltInsBinaryVersion builtInsBinaryVersion, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        super(fqName, storageManager, moduleDescriptor, protoBuf$PackageFragment, builtInsBinaryVersion, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public final String toString() {
        StringBuilder sb = new StringBuilder("builtins package fragment for ");
        sb.append(this.f72537f);
        sb.append(" from ");
        int i2 = DescriptorUtilsKt.f73888a;
        ModuleDescriptor moduleDescriptorC = DescriptorUtils.c(this);
        moduleDescriptorC.getClass();
        sb.append(moduleDescriptorC);
        return sb.toString();
    }
}
