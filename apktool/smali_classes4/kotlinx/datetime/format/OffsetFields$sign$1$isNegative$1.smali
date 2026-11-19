.class final synthetic Lkotlinx/datetime/format/OffsetFields$sign$1$isNegative$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lkotlinx/datetime/format/OffsetFields$sign$1$isNegative$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlinx/datetime/format/OffsetFields$sign$1$isNegative$1;

    const-string v1, "isNegative()Ljava/lang/Boolean;"

    const/4 v2, 0x0

    const-class v3, Lkotlinx/datetime/format/UtcOffsetFieldContainer;

    const-string v4, "isNegative"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/datetime/format/OffsetFields$sign$1$isNegative$1;->b:Lkotlinx/datetime/format/OffsetFields$sign$1$isNegative$1;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/datetime/format/UtcOffsetFieldContainer;

    invoke-interface {p1}, Lkotlinx/datetime/format/UtcOffsetFieldContainer;->isNegative()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlinx/datetime/format/UtcOffsetFieldContainer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlinx/datetime/format/UtcOffsetFieldContainer;->f(Ljava/lang/Boolean;)V

    return-void
.end method
