.class final synthetic Lkotlinx/datetime/format/OffsetFields$secondsOfMinute$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/format/OffsetFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

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
.field public static final b:Lkotlinx/datetime/format/OffsetFields$secondsOfMinute$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlinx/datetime/format/OffsetFields$secondsOfMinute$1;

    const-string v1, "getSecondsOfMinute()Ljava/lang/Integer;"

    const/4 v2, 0x0

    const-class v3, Lkotlinx/datetime/format/UtcOffsetFieldContainer;

    const-string v4, "secondsOfMinute"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/datetime/format/OffsetFields$secondsOfMinute$1;->b:Lkotlinx/datetime/format/OffsetFields$secondsOfMinute$1;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/datetime/format/UtcOffsetFieldContainer;

    invoke-interface {p1}, Lkotlinx/datetime/format/UtcOffsetFieldContainer;->q()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlinx/datetime/format/UtcOffsetFieldContainer;

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p1, p2}, Lkotlinx/datetime/format/UtcOffsetFieldContainer;->m(Ljava/lang/Integer;)V

    return-void
.end method
