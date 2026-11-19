.class synthetic Lcom/sightcall/universal/model/Validator$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/model/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/model/Validator$JsonValidator$Type;->values()[Lcom/sightcall/universal/model/Validator$JsonValidator$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/model/Validator$1;->$SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type:[I

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/model/Validator$JsonValidator$Type;->OBJECT:Lcom/sightcall/universal/model/Validator$JsonValidator$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sightcall/universal/model/Validator$1;->$SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type:[I

    sget-object v1, Lcom/sightcall/universal/model/Validator$JsonValidator$Type;->ARRAY:Lcom/sightcall/universal/model/Validator$JsonValidator$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
