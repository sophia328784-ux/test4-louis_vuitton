.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type$Companion;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->MOBILE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->HOME:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->WORK:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method
