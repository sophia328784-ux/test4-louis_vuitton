.class public final Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "strongColor",
        "softColor",
        "",
        "animationDelay",
        "animationDuration",
        "Landroidx/compose/animation/core/Easing;",
        "animationEasing",
        "<init>",
        "(JJIILandroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:I

.field public final d:I

.field public final e:Landroidx/compose/animation/core/Easing;


# direct methods
.method public constructor <init>(JJIILandroidx/compose/animation/core/Easing;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->a:J

    iput-wide p3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->b:J

    iput p5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->c:I

    iput p6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->d:I

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->e:Landroidx/compose/animation/core/Easing;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->a:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->a:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->b:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->c:I

    iget v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->c:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->d:I

    iget v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->d:I

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->e:Landroidx/compose/animation/core/Easing;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->e:Landroidx/compose/animation/core/Easing;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->e:Landroidx/compose/animation/core/Easing;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", softColor="

    const-string v3, ", animationDelay="

    const-string v4, "ConfigurationSkeleton(strongColor="

    invoke-static {v4, v0, v2, v1, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", animationDuration="

    const-string v2, ", animationEasing="

    iget v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->c:I

    iget v4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->d:I

    invoke-static {v3, v4, v1, v2, v0}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSkeleton;->e:Landroidx/compose/animation/core/Easing;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
