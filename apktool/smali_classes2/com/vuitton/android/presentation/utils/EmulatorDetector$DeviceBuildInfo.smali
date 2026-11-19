.class public final Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/utils/EmulatorDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceBuildInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0081\u0008\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;",
        "",
        "",
        "fingerprint",
        "model",
        "manufacturer",
        "brand",
        "device",
        "board",
        "bootloader",
        "product",
        "hardware",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p6, p7, p8, p9}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;

    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", model="

    const-string v1, ", manufacturer="

    const-string v2, "DeviceBuildInfo(fingerprint="

    iget-object v3, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brand="

    const-string v2, ", device="

    iget-object v3, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", board="

    const-string v2, ", bootloader="

    iget-object v3, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", product="

    const-string v2, ", hardware="

    iget-object v3, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector$DeviceBuildInfo;->i:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
