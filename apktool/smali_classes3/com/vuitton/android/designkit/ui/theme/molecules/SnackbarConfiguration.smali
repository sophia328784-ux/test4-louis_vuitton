.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;",
        "",
        "",
        "leadingIcon",
        "Landroidx/compose/ui/graphics/Color;",
        "leadingIconTint",
        "dismissIconTint",
        "surfaceColor",
        "contentColor",
        "borderColor",
        "Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;",
        "colorScheme",
        "<init>",
        "(IJJJJJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;


# direct methods
.method public constructor <init>(IJJJJJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->a:I

    iput-wide p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->b:J

    iput-wide p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->c:J

    iput-wide p6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->d:J

    iput-wide p8, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->e:J

    iput-wide p10, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->f:J

    iput-object p12, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    return-void
.end method

.method public static a(Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;IJ)Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;
    .locals 14

    iget-wide v4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->c:J

    iget-wide v6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->d:J

    iget-wide v8, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->e:J

    iget-wide v10, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->f:J

    iget-object v12, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    const/4 v13, 0x0

    move v1, p1

    move-wide/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;-><init>(IJJJJJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->a:I

    iget v1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->a:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->b:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->b:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->c:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->d:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->d:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->e:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->e:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->f:J

    iget-wide v2, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->f:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-eq p0, p1, :cond_8

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v2, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->c:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->d:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->e:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->f:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->b:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->c:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->d:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->e:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->f:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SnackbarConfiguration(leadingIcon="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", leadingIconTint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dismissIconTint="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", surfaceColor="

    const-string v6, ", contentColor="

    invoke-static {v5, v1, v0, v2, v6}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", borderColor="

    const-string v1, ", colorScheme="

    invoke-static {v5, v3, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->g:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
