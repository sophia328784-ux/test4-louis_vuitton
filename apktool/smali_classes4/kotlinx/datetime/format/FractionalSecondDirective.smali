.class public final Lkotlinx/datetime/format/FractionalSecondDirective;
.super Lkotlinx/datetime/internal/format/DecimalFractionFieldFormatDirective;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/datetime/format/FractionalSecondDirective$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/datetime/internal/format/DecimalFractionFieldFormatDirective<",
        "Lkotlinx/datetime/format/TimeFieldContainer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\nB\'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/datetime/format/FractionalSecondDirective;",
        "Lkotlinx/datetime/internal/format/DecimalFractionFieldFormatDirective;",
        "Lkotlinx/datetime/format/TimeFieldContainer;",
        "",
        "minDigits",
        "maxDigits",
        "",
        "zerosToAdd",
        "<init>",
        "(IILjava/util/List;)V",
        "Companion",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lkotlinx/datetime/format/FractionalSecondDirective$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/FractionalSecondDirective$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlinx/datetime/format/FractionalSecondDirective;->g:Ljava/util/List;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v0

    move-object v5, v2

    move-object v7, v0

    move-object v8, v2

    move-object v1, v0

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlinx/datetime/format/FractionalSecondDirective;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/datetime/format/TimeFields;->a:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    sget-object v0, Lkotlinx/datetime/format/TimeFields;->d:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    invoke-direct {p0, v0, p1, p2, p3}, Lkotlinx/datetime/internal/format/DecimalFractionFieldFormatDirective;-><init>(Lkotlinx/datetime/internal/format/FieldSpec;IILjava/util/List;)V

    iput p1, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->e:I

    iput p2, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->f:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 15
    sget-object p3, Lkotlinx/datetime/format/FractionalSecondDirective;->g:Ljava/util/List;

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/datetime/format/FractionalSecondDirective;-><init>(IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/datetime/format/FractionalSecondDirective;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/datetime/format/FractionalSecondDirective;

    iget v0, p1, Lkotlinx/datetime/format/FractionalSecondDirective;->e:I

    iget v1, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->e:I

    if-ne v1, v0, :cond_0

    iget p0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->f:I

    iget p1, p1, Lkotlinx/datetime/format/FractionalSecondDirective;->f:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->e:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lkotlinx/datetime/format/FractionalSecondDirective;->f:I

    add-int/2addr v0, p0

    return v0
.end method
