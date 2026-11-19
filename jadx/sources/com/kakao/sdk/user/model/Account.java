package com.kakao.sdk.user.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b3\b\u0087\b\u0018\u00002\u00020\u0001B©\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0019\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010\t\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b%\u0010&R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010'\u001a\u0004\b(\u0010)R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010'\u001a\u0004\b*\u0010)R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010'\u001a\u0004\b+\u0010)R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010,\u001a\u0004\b-\u0010.R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010'\u001a\u0004\b/\u0010)R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u00100\u001a\u0004\b1\u00102R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010'\u001a\u0004\b3\u0010)R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010'\u001a\u0004\b\f\u0010)R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010'\u001a\u0004\b\r\u0010)R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u000e\u00100\u001a\u0004\b4\u00102R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010'\u001a\u0004\b5\u0010)R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u00106\u001a\u0004\b7\u00108R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010'\u001a\u0004\b9\u0010)R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0013\u00100\u001a\u0004\b:\u00102R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010'\u001a\u0004\b;\u0010)R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0015\u00100\u001a\u0004\b<\u00102R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010=\u001a\u0004\b>\u0010?R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010'\u001a\u0004\b@\u0010)R\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010A\u001a\u0004\bB\u0010CR\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010'\u001a\u0004\bD\u0010)R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u001c\u00100\u001a\u0004\bE\u00102R\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010'\u001a\u0004\bF\u0010)R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u001e\u00100\u001a\u0004\bG\u00102R\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010'\u001a\u0004\bH\u0010)R\u0019\u0010 \u001a\u0004\u0018\u00010\u00198\u0006¢\u0006\f\n\u0004\b \u0010A\u001a\u0004\bI\u0010CR\u0019\u0010!\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b!\u0010'\u001a\u0004\bJ\u0010)R\u0019\u0010\"\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\"\u00100\u001a\u0004\bK\u00102R\u0019\u0010#\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b#\u0010'\u001a\u0004\b#\u0010)R\u0019\u0010$\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b$\u0010'\u001a\u0004\b$\u0010)¨\u0006L"}, d2 = {"Lcom/kakao/sdk/user/model/Account;", "Landroid/os/Parcelable;", "", "profileNeedsAgreement", "profileNicknameNeedsAgreement", "profileImageNeedsAgreement", "Lcom/kakao/sdk/user/model/Profile;", "profile", "nameNeedsAgreement", "", "name", "emailNeedsAgreement", "isEmailValid", "isEmailVerified", "email", "ageRangeNeedsAgreement", "Lcom/kakao/sdk/user/model/AgeRange;", "ageRange", "birthyearNeedsAgreement", "birthyear", "birthdayNeedsAgreement", "birthday", "Lcom/kakao/sdk/user/model/BirthdayType;", "birthdayType", "genderNeedsAgreement", "Lcom/kakao/sdk/user/model/Gender;", "gender", "legalNameNeedsAgreement", "legalName", "legalBirthDateNeedsAgreement", "legalBirthDate", "legalGenderNeedsAgreement", "legalGender", "phoneNumberNeedsAgreement", "phoneNumber", "isKoreanNeedsAgreement", "isKorean", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getProfileNeedsAgreement", "()Ljava/lang/Boolean;", "getProfileNicknameNeedsAgreement", "getProfileImageNeedsAgreement", "Lcom/kakao/sdk/user/model/Profile;", NBSSpanMetricUnit.Bit, "()Lcom/kakao/sdk/user/model/Profile;", "getNameNeedsAgreement", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "getEmailNeedsAgreement", "a", "getAgeRangeNeedsAgreement", "Lcom/kakao/sdk/user/model/AgeRange;", "getAgeRange", "()Lcom/kakao/sdk/user/model/AgeRange;", "getBirthyearNeedsAgreement", "getBirthyear", "getBirthdayNeedsAgreement", "getBirthday", "Lcom/kakao/sdk/user/model/BirthdayType;", "getBirthdayType", "()Lcom/kakao/sdk/user/model/BirthdayType;", "getGenderNeedsAgreement", "Lcom/kakao/sdk/user/model/Gender;", "getGender", "()Lcom/kakao/sdk/user/model/Gender;", "getLegalNameNeedsAgreement", "getLegalName", "getLegalBirthDateNeedsAgreement", "getLegalBirthDate", "getLegalGenderNeedsAgreement", "getLegalGender", "getPhoneNumberNeedsAgreement", "getPhoneNumber", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Account implements Parcelable {
    public static final Parcelable.Creator<Account> CREATOR = new Creator();
    private final AgeRange ageRange;
    private final Boolean ageRangeNeedsAgreement;
    private final String birthday;
    private final Boolean birthdayNeedsAgreement;
    private final BirthdayType birthdayType;
    private final String birthyear;
    private final Boolean birthyearNeedsAgreement;
    private final String email;
    private final Boolean emailNeedsAgreement;
    private final Gender gender;
    private final Boolean genderNeedsAgreement;
    private final Boolean isEmailValid;
    private final Boolean isEmailVerified;
    private final Boolean isKorean;
    private final Boolean isKoreanNeedsAgreement;
    private final String legalBirthDate;
    private final Boolean legalBirthDateNeedsAgreement;
    private final Gender legalGender;
    private final Boolean legalGenderNeedsAgreement;
    private final String legalName;
    private final Boolean legalNameNeedsAgreement;
    private final String name;
    private final Boolean nameNeedsAgreement;
    private final String phoneNumber;
    private final Boolean phoneNumberNeedsAgreement;
    private final Profile profile;
    private final Boolean profileImageNeedsAgreement;
    private final Boolean profileNeedsAgreement;
    private final Boolean profileNicknameNeedsAgreement;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Account> {
        @Override // android.os.Parcelable.Creator
        public final Account createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Boolean boolValueOf3;
            Parcel parcel2;
            Profile profileCreateFromParcel;
            Boolean boolValueOf4;
            Boolean boolValueOf5;
            Boolean boolValueOf6;
            Boolean boolValueOf7;
            Boolean boolValueOf8;
            Boolean boolValueOf9;
            Boolean boolValueOf10;
            Boolean boolValueOf11;
            Boolean boolValueOf12;
            Boolean boolValueOf13;
            Boolean boolValueOf14;
            Boolean boolValueOf15;
            Boolean boolValueOf16;
            parcel.getClass();
            Boolean boolValueOf17 = null;
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                boolValueOf3 = null;
            } else {
                boolValueOf3 = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                parcel2 = parcel;
                profileCreateFromParcel = null;
            } else {
                parcel2 = parcel;
                profileCreateFromParcel = Profile.CREATOR.createFromParcel(parcel2);
            }
            Profile profile = profileCreateFromParcel;
            if (parcel2.readInt() == 0) {
                boolValueOf4 = null;
            } else {
                boolValueOf4 = Boolean.valueOf(parcel2.readInt() != 0);
            }
            Boolean bool = boolValueOf3;
            String string = parcel2.readString();
            if (parcel2.readInt() == 0) {
                boolValueOf5 = null;
            } else {
                boolValueOf5 = Boolean.valueOf(parcel2.readInt() != 0);
            }
            if (parcel2.readInt() == 0) {
                boolValueOf6 = null;
            } else {
                boolValueOf6 = Boolean.valueOf(parcel2.readInt() != 0);
            }
            if (parcel2.readInt() == 0) {
                boolValueOf7 = null;
            } else {
                boolValueOf7 = Boolean.valueOf(parcel2.readInt() != 0);
            }
            String string2 = parcel2.readString();
            if (parcel2.readInt() == 0) {
                boolValueOf8 = null;
            } else {
                boolValueOf8 = Boolean.valueOf(parcel2.readInt() != 0);
            }
            AgeRange ageRangeValueOf = parcel2.readInt() == 0 ? null : AgeRange.valueOf(parcel2.readString());
            if (parcel2.readInt() == 0) {
                boolValueOf9 = null;
            } else {
                boolValueOf9 = Boolean.valueOf(parcel2.readInt() != 0);
            }
            String string3 = parcel2.readString();
            if (parcel2.readInt() == 0) {
                boolValueOf10 = null;
            } else {
                boolValueOf10 = Boolean.valueOf(parcel2.readInt() != 0);
            }
            Boolean bool2 = boolValueOf6;
            AgeRange ageRange = ageRangeValueOf;
            String string4 = parcel.readString();
            BirthdayType birthdayTypeValueOf = parcel.readInt() == 0 ? null : BirthdayType.valueOf(parcel.readString());
            if (parcel.readInt() == 0) {
                boolValueOf11 = null;
            } else {
                boolValueOf11 = Boolean.valueOf(parcel.readInt() != 0);
            }
            Gender genderValueOf = parcel.readInt() == 0 ? null : Gender.valueOf(parcel.readString());
            if (parcel.readInt() == 0) {
                boolValueOf12 = null;
            } else {
                boolValueOf12 = Boolean.valueOf(parcel.readInt() != 0);
            }
            Boolean bool3 = boolValueOf11;
            String string5 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf13 = null;
            } else {
                boolValueOf13 = Boolean.valueOf(parcel.readInt() != 0);
            }
            Boolean bool4 = boolValueOf2;
            Boolean bool5 = boolValueOf4;
            Boolean bool6 = boolValueOf7;
            Boolean bool7 = boolValueOf9;
            BirthdayType birthdayType = birthdayTypeValueOf;
            Boolean bool8 = boolValueOf12;
            String string6 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf14 = null;
            } else {
                boolValueOf14 = Boolean.valueOf(parcel.readInt() != 0);
            }
            Gender genderValueOf2 = parcel.readInt() == 0 ? null : Gender.valueOf(parcel.readString());
            if (parcel.readInt() == 0) {
                boolValueOf15 = null;
            } else {
                boolValueOf15 = Boolean.valueOf(parcel.readInt() != 0);
            }
            boolean z = true;
            Boolean bool9 = boolValueOf14;
            String string7 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf16 = null;
            } else {
                boolValueOf16 = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() != 0) {
                if (parcel.readInt() == 0) {
                    z = false;
                }
                boolValueOf17 = Boolean.valueOf(z);
            }
            return new Account(boolValueOf, bool4, bool, profile, bool5, string, boolValueOf5, bool2, bool6, string2, boolValueOf8, ageRange, bool7, string3, boolValueOf10, string4, birthdayType, bool3, genderValueOf, bool8, string5, boolValueOf13, string6, bool9, genderValueOf2, boolValueOf15, string7, boolValueOf16, boolValueOf17);
        }

        @Override // android.os.Parcelable.Creator
        public final Account[] newArray(int i2) {
            return new Account[i2];
        }
    }

    public Account(Boolean bool, Boolean bool2, Boolean bool3, Profile profile, Boolean bool4, String str, Boolean bool5, Boolean bool6, Boolean bool7, String str2, Boolean bool8, AgeRange ageRange, Boolean bool9, String str3, Boolean bool10, String str4, BirthdayType birthdayType, Boolean bool11, Gender gender, Boolean bool12, String str5, Boolean bool13, String str6, Boolean bool14, Gender gender2, Boolean bool15, String str7, Boolean bool16, Boolean bool17) {
        this.profileNeedsAgreement = bool;
        this.profileNicknameNeedsAgreement = bool2;
        this.profileImageNeedsAgreement = bool3;
        this.profile = profile;
        this.nameNeedsAgreement = bool4;
        this.name = str;
        this.emailNeedsAgreement = bool5;
        this.isEmailValid = bool6;
        this.isEmailVerified = bool7;
        this.email = str2;
        this.ageRangeNeedsAgreement = bool8;
        this.ageRange = ageRange;
        this.birthyearNeedsAgreement = bool9;
        this.birthyear = str3;
        this.birthdayNeedsAgreement = bool10;
        this.birthday = str4;
        this.birthdayType = birthdayType;
        this.genderNeedsAgreement = bool11;
        this.gender = gender;
        this.legalNameNeedsAgreement = bool12;
        this.legalName = str5;
        this.legalBirthDateNeedsAgreement = bool13;
        this.legalBirthDate = str6;
        this.legalGenderNeedsAgreement = bool14;
        this.legalGender = gender2;
        this.phoneNumberNeedsAgreement = bool15;
        this.phoneNumber = str7;
        this.isKoreanNeedsAgreement = bool16;
        this.isKorean = bool17;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Profile getProfile() {
        return this.profile;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Account)) {
            return false;
        }
        Account account = (Account) obj;
        return Intrinsics.c(this.profileNeedsAgreement, account.profileNeedsAgreement) && Intrinsics.c(this.profileNicknameNeedsAgreement, account.profileNicknameNeedsAgreement) && Intrinsics.c(this.profileImageNeedsAgreement, account.profileImageNeedsAgreement) && Intrinsics.c(this.profile, account.profile) && Intrinsics.c(this.nameNeedsAgreement, account.nameNeedsAgreement) && Intrinsics.c(this.name, account.name) && Intrinsics.c(this.emailNeedsAgreement, account.emailNeedsAgreement) && Intrinsics.c(this.isEmailValid, account.isEmailValid) && Intrinsics.c(this.isEmailVerified, account.isEmailVerified) && Intrinsics.c(this.email, account.email) && Intrinsics.c(this.ageRangeNeedsAgreement, account.ageRangeNeedsAgreement) && this.ageRange == account.ageRange && Intrinsics.c(this.birthyearNeedsAgreement, account.birthyearNeedsAgreement) && Intrinsics.c(this.birthyear, account.birthyear) && Intrinsics.c(this.birthdayNeedsAgreement, account.birthdayNeedsAgreement) && Intrinsics.c(this.birthday, account.birthday) && this.birthdayType == account.birthdayType && Intrinsics.c(this.genderNeedsAgreement, account.genderNeedsAgreement) && this.gender == account.gender && Intrinsics.c(this.legalNameNeedsAgreement, account.legalNameNeedsAgreement) && Intrinsics.c(this.legalName, account.legalName) && Intrinsics.c(this.legalBirthDateNeedsAgreement, account.legalBirthDateNeedsAgreement) && Intrinsics.c(this.legalBirthDate, account.legalBirthDate) && Intrinsics.c(this.legalGenderNeedsAgreement, account.legalGenderNeedsAgreement) && this.legalGender == account.legalGender && Intrinsics.c(this.phoneNumberNeedsAgreement, account.phoneNumberNeedsAgreement) && Intrinsics.c(this.phoneNumber, account.phoneNumber) && Intrinsics.c(this.isKoreanNeedsAgreement, account.isKoreanNeedsAgreement) && Intrinsics.c(this.isKorean, account.isKorean);
    }

    public final int hashCode() {
        Boolean bool = this.profileNeedsAgreement;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.profileNicknameNeedsAgreement;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.profileImageNeedsAgreement;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Profile profile = this.profile;
        int iHashCode4 = (iHashCode3 + (profile == null ? 0 : profile.hashCode())) * 31;
        Boolean bool4 = this.nameNeedsAgreement;
        int iHashCode5 = (iHashCode4 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        String str = this.name;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool5 = this.emailNeedsAgreement;
        int iHashCode7 = (iHashCode6 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.isEmailValid;
        int iHashCode8 = (iHashCode7 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.isEmailVerified;
        int iHashCode9 = (iHashCode8 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        String str2 = this.email;
        int iHashCode10 = (iHashCode9 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool8 = this.ageRangeNeedsAgreement;
        int iHashCode11 = (iHashCode10 + (bool8 == null ? 0 : bool8.hashCode())) * 31;
        AgeRange ageRange = this.ageRange;
        int iHashCode12 = (iHashCode11 + (ageRange == null ? 0 : ageRange.hashCode())) * 31;
        Boolean bool9 = this.birthyearNeedsAgreement;
        int iHashCode13 = (iHashCode12 + (bool9 == null ? 0 : bool9.hashCode())) * 31;
        String str3 = this.birthyear;
        int iHashCode14 = (iHashCode13 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool10 = this.birthdayNeedsAgreement;
        int iHashCode15 = (iHashCode14 + (bool10 == null ? 0 : bool10.hashCode())) * 31;
        String str4 = this.birthday;
        int iHashCode16 = (iHashCode15 + (str4 == null ? 0 : str4.hashCode())) * 31;
        BirthdayType birthdayType = this.birthdayType;
        int iHashCode17 = (iHashCode16 + (birthdayType == null ? 0 : birthdayType.hashCode())) * 31;
        Boolean bool11 = this.genderNeedsAgreement;
        int iHashCode18 = (iHashCode17 + (bool11 == null ? 0 : bool11.hashCode())) * 31;
        Gender gender = this.gender;
        int iHashCode19 = (iHashCode18 + (gender == null ? 0 : gender.hashCode())) * 31;
        Boolean bool12 = this.legalNameNeedsAgreement;
        int iHashCode20 = (iHashCode19 + (bool12 == null ? 0 : bool12.hashCode())) * 31;
        String str5 = this.legalName;
        int iHashCode21 = (iHashCode20 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool13 = this.legalBirthDateNeedsAgreement;
        int iHashCode22 = (iHashCode21 + (bool13 == null ? 0 : bool13.hashCode())) * 31;
        String str6 = this.legalBirthDate;
        int iHashCode23 = (iHashCode22 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Boolean bool14 = this.legalGenderNeedsAgreement;
        int iHashCode24 = (iHashCode23 + (bool14 == null ? 0 : bool14.hashCode())) * 31;
        Gender gender2 = this.legalGender;
        int iHashCode25 = (iHashCode24 + (gender2 == null ? 0 : gender2.hashCode())) * 31;
        Boolean bool15 = this.phoneNumberNeedsAgreement;
        int iHashCode26 = (iHashCode25 + (bool15 == null ? 0 : bool15.hashCode())) * 31;
        String str7 = this.phoneNumber;
        int iHashCode27 = (iHashCode26 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool16 = this.isKoreanNeedsAgreement;
        int iHashCode28 = (iHashCode27 + (bool16 == null ? 0 : bool16.hashCode())) * 31;
        Boolean bool17 = this.isKorean;
        return iHashCode28 + (bool17 != null ? bool17.hashCode() : 0);
    }

    public final String toString() {
        return "Account(profileNeedsAgreement=" + this.profileNeedsAgreement + ", profileNicknameNeedsAgreement=" + this.profileNicknameNeedsAgreement + ", profileImageNeedsAgreement=" + this.profileImageNeedsAgreement + ", profile=" + this.profile + ", nameNeedsAgreement=" + this.nameNeedsAgreement + ", name=" + this.name + ", emailNeedsAgreement=" + this.emailNeedsAgreement + ", isEmailValid=" + this.isEmailValid + ", isEmailVerified=" + this.isEmailVerified + ", email=" + this.email + ", ageRangeNeedsAgreement=" + this.ageRangeNeedsAgreement + ", ageRange=" + this.ageRange + ", birthyearNeedsAgreement=" + this.birthyearNeedsAgreement + ", birthyear=" + this.birthyear + ", birthdayNeedsAgreement=" + this.birthdayNeedsAgreement + ", birthday=" + this.birthday + ", birthdayType=" + this.birthdayType + ", genderNeedsAgreement=" + this.genderNeedsAgreement + ", gender=" + this.gender + ", legalNameNeedsAgreement=" + this.legalNameNeedsAgreement + ", legalName=" + this.legalName + ", legalBirthDateNeedsAgreement=" + this.legalBirthDateNeedsAgreement + ", legalBirthDate=" + this.legalBirthDate + ", legalGenderNeedsAgreement=" + this.legalGenderNeedsAgreement + ", legalGender=" + this.legalGender + ", phoneNumberNeedsAgreement=" + this.phoneNumberNeedsAgreement + ", phoneNumber=" + this.phoneNumber + ", isKoreanNeedsAgreement=" + this.isKoreanNeedsAgreement + ", isKorean=" + this.isKorean + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        Boolean bool = this.profileNeedsAgreement;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool);
        }
        Boolean bool2 = this.profileNicknameNeedsAgreement;
        if (bool2 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool2);
        }
        Boolean bool3 = this.profileImageNeedsAgreement;
        if (bool3 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool3);
        }
        Profile profile = this.profile;
        if (profile == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            profile.writeToParcel(parcel, i2);
        }
        Boolean bool4 = this.nameNeedsAgreement;
        if (bool4 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool4);
        }
        parcel.writeString(this.name);
        Boolean bool5 = this.emailNeedsAgreement;
        if (bool5 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool5);
        }
        Boolean bool6 = this.isEmailValid;
        if (bool6 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool6);
        }
        Boolean bool7 = this.isEmailVerified;
        if (bool7 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool7);
        }
        parcel.writeString(this.email);
        Boolean bool8 = this.ageRangeNeedsAgreement;
        if (bool8 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool8);
        }
        AgeRange ageRange = this.ageRange;
        if (ageRange == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(ageRange.name());
        }
        Boolean bool9 = this.birthyearNeedsAgreement;
        if (bool9 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool9);
        }
        parcel.writeString(this.birthyear);
        Boolean bool10 = this.birthdayNeedsAgreement;
        if (bool10 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool10);
        }
        parcel.writeString(this.birthday);
        BirthdayType birthdayType = this.birthdayType;
        if (birthdayType == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(birthdayType.name());
        }
        Boolean bool11 = this.genderNeedsAgreement;
        if (bool11 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool11);
        }
        Gender gender = this.gender;
        if (gender == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(gender.name());
        }
        Boolean bool12 = this.legalNameNeedsAgreement;
        if (bool12 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool12);
        }
        parcel.writeString(this.legalName);
        Boolean bool13 = this.legalBirthDateNeedsAgreement;
        if (bool13 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool13);
        }
        parcel.writeString(this.legalBirthDate);
        Boolean bool14 = this.legalGenderNeedsAgreement;
        if (bool14 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool14);
        }
        Gender gender2 = this.legalGender;
        if (gender2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(gender2.name());
        }
        Boolean bool15 = this.phoneNumberNeedsAgreement;
        if (bool15 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool15);
        }
        parcel.writeString(this.phoneNumber);
        Boolean bool16 = this.isKoreanNeedsAgreement;
        if (bool16 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool16);
        }
        Boolean bool17 = this.isKorean;
        if (bool17 == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool17);
        }
    }
}
