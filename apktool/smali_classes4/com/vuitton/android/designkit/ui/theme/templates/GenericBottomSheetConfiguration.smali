.class final Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;",
        "",
        "Landroidx/compose/ui/text/style/TextAlign;",
        "textAlignment",
        "Landroidx/compose/ui/unit/Dp;",
        "linkTopPadding",
        "<init>",
        "(IFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:I

.field public final b:F


# direct methods
.method public constructor <init>(IFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->a:I

    iput p2, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->b:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;

    iget v1, p1, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->a:I

    sget-object v3, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    iget v3, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->a:I

    if-ne v3, v1, :cond_3

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->b:F

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->b:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->a:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/TextAlign;->a(I)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/templates/GenericBottomSheetConfiguration;->b:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    move-result-object p0

    const-string v1, ", linkTopPadding="

    const-string v2, ")"

    const-string v3, "GenericBottomSheetConfiguration(textAlignment="

    invoke-static {v3, v0, v1, p0, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
