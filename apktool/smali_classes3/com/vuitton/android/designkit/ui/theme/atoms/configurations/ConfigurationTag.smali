.class public final Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u000eB7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;",
        "",
        "Landroidx/compose/ui/text/TextStyle;",
        "style",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "textColor",
        "leadingIconTint",
        "Landroidx/compose/ui/graphics/Shape;",
        "shape",
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;",
        "border",
        "<init>",
        "(Landroidx/compose/ui/text/TextStyle;JJJLandroidx/compose/ui/graphics/Shape;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Border",
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
.field public final a:Landroidx/compose/ui/text/TextStyle;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Landroidx/compose/ui/graphics/Shape;

.field public final f:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;JJJLandroidx/compose/ui/graphics/Shape;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->a:Landroidx/compose/ui/text/TextStyle;

    iput-wide p2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->b:J

    iput-wide p4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->c:J

    iput-wide p6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->d:J

    iput-object p8, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p9, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;

    return-void
.end method

.method public static a(Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;JJI)Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;
    .locals 11

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->a:Landroidx/compose/ui/text/TextStyle;

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    iget-wide p3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->c:J

    :cond_0
    move-wide v4, p3

    iget-wide v6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->d:J

    iget-object v8, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v9, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;

    const/4 v10, 0x0

    move-wide v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;-><init>(Landroidx/compose/ui/text/TextStyle;JJJLandroidx/compose/ui/graphics/Shape;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->a:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->a:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->b:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->c:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->d:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->d:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->e:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->a:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v2, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->e:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->b:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->c:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->d:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ConfigurationTag(style="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->a:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", backgroundColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", textColor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", leadingIconTint="

    const-string v4, ", shape="

    invoke-static {v3, v1, v0, v2, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->e:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", border="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTag$Border;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
