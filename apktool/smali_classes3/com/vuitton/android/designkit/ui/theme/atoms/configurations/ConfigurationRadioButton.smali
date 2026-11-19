.class public final Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;",
        "",
        "Landroidx/compose/ui/graphics/Color;",
        "enabledColorChecked",
        "enabledColorUnchecked",
        "disabledColorChecked",
        "disabledColorUnchecked",
        "internalColor",
        "<init>",
        "(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->a:J

    iput-wide p3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->b:J

    iput-wide p5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->c:J

    iput-wide p7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->d:J

    iput-wide p9, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->e:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->a:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->b:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->c:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->d:J

    iget-wide v5, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->e:J

    iget-wide p0, p1, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->e:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->c:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->d:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;->e:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object p0

    const-string v4, ", enabledColorUnchecked="

    const-string v5, ", disabledColorChecked="

    const-string v6, "ConfigurationRadioButton(enabledColorChecked="

    invoke-static {v6, v0, v4, v1, v5}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disabledColorUnchecked="

    const-string v4, ", internalColor="

    invoke-static {v0, v2, v1, v3, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
