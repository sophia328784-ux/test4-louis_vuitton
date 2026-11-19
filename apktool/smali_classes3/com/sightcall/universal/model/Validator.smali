.class public abstract Lcom/sightcall/universal/model/Validator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/model/Validator$RegexValidator;,
        Lcom/sightcall/universal/model/Validator$EnumValidator;,
        Lcom/sightcall/universal/model/Validator$JsonValidator;,
        Lcom/sightcall/universal/model/Validator$BooleanValidator;,
        Lcom/sightcall/universal/model/Validator$IntegerValidator;,
        Lcom/sightcall/universal/model/Validator$LongValidator;,
        Lcom/sightcall/universal/model/Validator$IgnoreValidator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ignore()Lcom/sightcall/universal/model/Validator;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Validator$IgnoreValidator;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Validator$IgnoreValidator;-><init>()V

    return-object v0
.end method

.method public static ofBoolean()Lcom/sightcall/universal/model/Validator;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Validator$BooleanValidator;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Validator$BooleanValidator;-><init>()V

    return-object v0
.end method

.method public static ofEnum(Ljava/util/EnumSet;)Lcom/sightcall/universal/model/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "*>;)",
            "Lcom/sightcall/universal/model/Validator;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/model/Validator$EnumValidator;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/model/Validator$EnumValidator;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method

.method public static ofInteger()Lcom/sightcall/universal/model/Validator;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Validator$IntegerValidator;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Validator$IntegerValidator;-><init>()V

    return-object v0
.end method

.method public static ofJson(Lcom/sightcall/universal/model/Validator$JsonValidator$Type;)Lcom/sightcall/universal/model/Validator;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Validator$JsonValidator;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/model/Validator$JsonValidator;-><init>(Lcom/sightcall/universal/model/Validator$JsonValidator$Type;)V

    return-object v0
.end method

.method public static ofLong()Lcom/sightcall/universal/model/Validator;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Validator$LongValidator;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Validator$LongValidator;-><init>()V

    return-object v0
.end method

.method public static ofRegex(Ljava/lang/String;)Lcom/sightcall/universal/model/Validator;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Validator$RegexValidator;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/model/Validator$RegexValidator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract isValid(Ljava/lang/Object;)Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
