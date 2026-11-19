.class final synthetic Lkotlinx/datetime/format/DateTimeComponentsKt$timeZoneField$1;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/format/DateTimeComponentsKt;
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
.field public static final b:Lkotlinx/datetime/format/DateTimeComponentsKt$timeZoneField$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponentsKt$timeZoneField$1;

    const-string v1, "getTimeZoneId()Ljava/lang/String;"

    const/4 v2, 0x0

    const-class v3, Lkotlinx/datetime/format/DateTimeComponentsContents;

    const-string v4, "timeZoneId"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/datetime/format/DateTimeComponentsKt$timeZoneField$1;->b:Lkotlinx/datetime/format/DateTimeComponentsKt$timeZoneField$1;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/datetime/format/DateTimeComponentsContents;

    iget-object p0, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlinx/datetime/format/DateTimeComponentsContents;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->d:Ljava/lang/String;

    return-void
.end method
