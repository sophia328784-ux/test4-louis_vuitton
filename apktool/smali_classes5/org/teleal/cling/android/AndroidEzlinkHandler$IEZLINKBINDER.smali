.class abstract Lorg/teleal/cling/android/AndroidEzlinkHandler$IEZLINKBINDER;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/android/AndroidEzlinkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IEZLINKBINDER"
.end annotation


# static fields
.field public static final a:Lorg/teleal/cling/android/AndroidEzlinkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/teleal/cling/android/AndroidEzlinkHandler;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    sput-object v0, Lorg/teleal/cling/android/AndroidEzlinkHandler$IEZLINKBINDER;->a:Lorg/teleal/cling/android/AndroidEzlinkHandler;

    return-void
.end method
