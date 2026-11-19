.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;
.super Ljava/lang/Object;


# instance fields
.field public final colorIntensity:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "color_intensity"
    .end annotation
.end field

.field public final paletteColorIndex:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "palette_color_index"
    .end annotation
.end field

.field public final paletteGuid:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "palette_guid"
    .end annotation
.end field

.field public final shineIntensity:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "shine_intensity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->paletteGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->paletteColorIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->colorIntensity:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->shineIntensity:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "DatabaseUpgrade_1_32"

    const-string v2, "[tryParse] failed"

    invoke-static {v0, v2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
