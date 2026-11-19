.class public final Lkotlinx/datetime/internal/format/UnsignedFieldSpec;
.super Lkotlinx/datetime/internal/format/AbstractFieldSpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Target:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/datetime/internal/format/AbstractFieldSpec<",
        "TTarget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002BS\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/datetime/internal/format/UnsignedFieldSpec;",
        "Target",
        "Lkotlinx/datetime/internal/format/AbstractFieldSpec;",
        "",
        "Lkotlinx/datetime/internal/format/Accessor;",
        "accessor",
        "minValue",
        "maxValue",
        "",
        "name",
        "defaultValue",
        "Lkotlinx/datetime/internal/format/FieldSign;",
        "sign",
        "<init>",
        "(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;)V",
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


# instance fields
.field public final a:Lkotlinx/datetime/internal/format/Accessor;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Integer;

.field public final f:Lkotlinx/datetime/internal/format/FieldSign;

.field public final g:I


# direct methods
.method public constructor <init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/datetime/internal/format/Accessor<",
            "-TTarget;",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlinx/datetime/internal/format/FieldSign<",
            "-TTarget;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lkotlinx/datetime/internal/format/AbstractFieldSpec;-><init>()V

    iput-object p1, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->a:Lkotlinx/datetime/internal/format/Accessor;

    iput p2, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->b:I

    iput p3, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->c:I

    iput-object p4, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->d:Ljava/lang/String;

    iput-object p5, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->f:Lkotlinx/datetime/internal/format/FieldSign;

    const/16 p1, 0xa

    if-ge p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    if-ge p3, p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e8

    if-ge p3, p1, :cond_2

    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->g:I

    return-void

    :cond_2
    const-string p0, "Max value "

    const-string p1, " is too large"

    invoke-static {p3, p0, p1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 54
    invoke-interface {p1}, Lkotlinx/datetime/internal/format/parser/AssignableField;->getName()Ljava/lang/String;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 p8, 0x0

    if-eqz p4, :cond_1

    move-object v5, p8

    goto :goto_0

    :cond_1
    move-object v5, p5

    :goto_0
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    move-object v6, p8

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    goto :goto_2

    :cond_2
    move-object v6, p6

    goto :goto_1

    .line 55
    :goto_2
    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b()Lkotlinx/datetime/internal/format/Accessor;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->a:Lkotlinx/datetime/internal/format/Accessor;

    return-object p0
.end method

.method public final c()Lkotlinx/datetime/internal/format/FieldSign;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->f:Lkotlinx/datetime/internal/format/FieldSign;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;->d:Ljava/lang/String;

    return-object p0
.end method
