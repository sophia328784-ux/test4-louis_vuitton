.class public Lcom/sightcall/universal/model/Validator$JsonValidator;
.super Lcom/sightcall/universal/model/Validator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/model/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonValidator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/model/Validator$JsonValidator$Type;
    }
.end annotation


# instance fields
.field private final type:Lcom/sightcall/universal/model/Validator$JsonValidator$Type;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Validator$JsonValidator$Type;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/model/Validator;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/model/Validator$JsonValidator;->type:Lcom/sightcall/universal/model/Validator$JsonValidator$Type;

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sightcall/universal/model/Validator$1;->$SwitchMap$com$sightcall$universal$model$Validator$JsonValidator$Type:[I

    iget-object p0, p0, Lcom/sightcall/universal/model/Validator$JsonValidator;->type:Lcom/sightcall/universal/model/Validator$JsonValidator$Type;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/json/JSONArray;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "JsonValidator{}"

    return-object p0
.end method

.method public type()Lcom/sightcall/universal/model/Validator$JsonValidator$Type;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/Validator$JsonValidator;->type:Lcom/sightcall/universal/model/Validator$JsonValidator$Type;

    return-object p0
.end method
