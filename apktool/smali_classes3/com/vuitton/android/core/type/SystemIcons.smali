.class public final Lcom/vuitton/android/core/type/SystemIcons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/core/type/SystemIcons$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/core/type/SystemIcons;",
        "",
        "Companion",
        "darkIcons",
        "",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

.field public static final c:Z


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/core/type/SystemIcons$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/core/type/SystemIcons$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    return-void
.end method

.method public static a(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "SystemIcons(darkIcons="

    const-string v1, ")"

    invoke-static {v0, v1, p0}, Ltr;->i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/vuitton/android/core/type/SystemIcons;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/vuitton/android/core/type/SystemIcons;

    iget-boolean p1, p1, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    iget-boolean p0, p0, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    invoke-static {p0}, Lcom/vuitton/android/core/type/SystemIcons;->a(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
