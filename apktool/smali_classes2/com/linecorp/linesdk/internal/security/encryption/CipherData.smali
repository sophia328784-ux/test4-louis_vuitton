.class public final Lcom/linecorp/linesdk/internal/security/encryption/CipherData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/security/encryption/CipherData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/linecorp/linesdk/internal/security/encryption/CipherData;",
        "",
        "",
        "encryptedData",
        "initialVector",
        "hmacValue",
        "<init>",
        "([B[B[B)V",
        "Companion",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcom/linecorp/linesdk/internal/security/encryption/CipherData$Companion;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/security/encryption/CipherData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData;->d:Lcom/linecorp/linesdk/internal/security/encryption/CipherData$Companion;

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData;->a:[B

    iput-object p2, p0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData;->b:[B

    iput-object p3, p0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData;->c:[B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData;->b:[B

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData;->c:[B

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/security/encryption/CipherData;->a:[B

    filled-new-array {p0, v0, v1}, [[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v4, Lcom/linecorp/linesdk/internal/security/encryption/CipherData$encodeToBase64String$1;->c:Lcom/linecorp/linesdk/internal/security/encryption/CipherData$encodeToBase64String$1;

    const/16 v5, 0x1e

    const-string v1, ";"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
