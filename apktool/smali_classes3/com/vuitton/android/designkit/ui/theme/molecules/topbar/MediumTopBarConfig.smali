.class final Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "contentColor",
        "subtitleContentColor",
        "Landroidx/compose/material3/RippleConfiguration;",
        "rippleConfiguration",
        "<init>",
        "(JJJLandroidx/compose/material3/RippleConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "system"
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
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Landroidx/compose/material3/RippleConfiguration;


# direct methods
.method public constructor <init>(JJJLandroidx/compose/material3/RippleConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->a:J

    iput-wide p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->b:J

    iput-wide p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->c:J

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->d:Landroidx/compose/material3/RippleConfiguration;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->a:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->a:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->b:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->c:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->d:Landroidx/compose/material3/RippleConfiguration;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->d:Landroidx/compose/material3/RippleConfiguration;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/RippleConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->d:Landroidx/compose/material3/RippleConfiguration;

    invoke-virtual {p0}, Landroidx/compose/material3/RippleConfiguration;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", contentColor="

    const-string v4, ", subtitleContentColor="

    const-string v5, "MediumTopBarConfig(backgroundColor="

    invoke-static {v5, v0, v3, v1, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rippleConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/MediumTopBarConfig;->d:Landroidx/compose/material3/RippleConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
