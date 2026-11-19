.class public final synthetic Lcom/google/android/play/core/integrity/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/integrity/internal/z;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/integrity/ae;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/integrity/ae;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/play/core/integrity/ae;->a:Lcom/google/android/play/core/integrity/ae;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Lcom/google/android/play/integrity/internal/n;
    .locals 1

    sget p0, Lcom/google/android/play/integrity/internal/m;->a:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "com.google.android.play.core.integrity.protocol.IIntegrityService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/play/integrity/internal/n;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/play/integrity/internal/n;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/play/integrity/internal/l;

    invoke-direct {p0, p1}, Lcom/google/android/play/integrity/internal/a;-><init>(Landroid/os/IBinder;)V

    return-object p0
.end method
