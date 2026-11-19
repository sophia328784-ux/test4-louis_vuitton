.class public final Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;
.super Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoreMode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;",
        "",
        "rmsCode",
        "token",
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;",
        "storeModeLaunchMode",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;)V",
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
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    iget-object p1, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", token="

    const-string v1, ", storeModeLaunchMode="

    const-string v2, "StoreMode(rmsCode="

    iget-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
