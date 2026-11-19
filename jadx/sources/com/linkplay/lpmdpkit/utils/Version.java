package com.linkplay.lpmdpkit.utils;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Version implements Comparable<Version>, Serializable {
    private final String originalString;
    private final long preReleaseVersion;
    private final VersionComparator.ReleaseType releaseType;
    private final List<Long> subversionNumbers;
    private final String suffix;
    private final List<Long> trimmedSubversionNumbers;

    public Version(String str, boolean z) {
        this.subversionNumbers = new ArrayList();
        this.trimmedSubversionNumbers = new ArrayList();
        StringBuilder sb = null;
        if (z) {
            if (str == null) {
                md.n("Argument versionString is null");
                throw null;
            }
            if (!VersionComparator.startsNumeric(str)) {
                md.n("Argument versionString is no valid version");
                throw null;
            }
        }
        this.originalString = str;
        if (str == null || !VersionComparator.startsNumeric(str)) {
            this.suffix = "";
        } else {
            boolean z2 = false;
            for (String str2 : str.replaceAll("\\s", "").split("\\.")) {
                if (z2) {
                    sb.append(FileUtils.HIDDEN_PREFIX);
                    sb.append(str2);
                } else if (VersionComparator.isNumeric(str2)) {
                    this.subversionNumbers.add(Long.valueOf(VersionComparator.safeParseLong(str2)));
                } else {
                    for (int i2 = 0; i2 < str2.length(); i2++) {
                        if (!Character.isDigit(str2.charAt(i2))) {
                            sb = new StringBuilder();
                            if (i2 > 0) {
                                this.subversionNumbers.add(Long.valueOf(VersionComparator.safeParseLong(str2.substring(0, i2))));
                                sb.append(str2.substring(i2));
                            } else {
                                sb.append(str2);
                            }
                            z2 = true;
                            break;
                        }
                    }
                }
            }
            this.suffix = sb != null ? sb.toString() : "";
            this.trimmedSubversionNumbers.addAll(this.subversionNumbers);
            while (!this.trimmedSubversionNumbers.isEmpty() && this.trimmedSubversionNumbers.lastIndexOf(0L) == this.trimmedSubversionNumbers.size() - 1) {
                List<Long> list = this.trimmedSubversionNumbers;
                list.remove(list.lastIndexOf(0L));
            }
        }
        VersionComparator.ReleaseType releaseTypeQualifierToReleaseType = VersionComparator.qualifierToReleaseType(this.suffix);
        this.releaseType = releaseTypeQualifierToReleaseType;
        this.preReleaseVersion = VersionComparator.preReleaseVersion(this.suffix, releaseTypeQualifierToReleaseType);
    }

    private int compareTo(Version version, boolean z) {
        int iCompareSubversionNumbers = VersionComparator.compareSubversionNumbers(this.trimmedSubversionNumbers, version.trimmedSubversionNumbers);
        if (iCompareSubversionNumbers != 0 || z) {
            return iCompareSubversionNumbers;
        }
        int iCompareTo = this.releaseType.compareTo(version.releaseType);
        return iCompareTo != 0 ? iCompareTo : Long.compare(this.preReleaseVersion, version.preReleaseVersion);
    }

    public final boolean equals(Object obj) {
        return ((obj instanceof Version) && isEqual((Version) obj)) || this == obj;
    }

    public long getMajor() {
        if (this.trimmedSubversionNumbers.size() > 0) {
            return this.trimmedSubversionNumbers.get(0).longValue();
        }
        return 0L;
    }

    public long getMinor() {
        if (this.trimmedSubversionNumbers.size() > 1) {
            return this.trimmedSubversionNumbers.get(1).longValue();
        }
        return 0L;
    }

    public String getOriginalString() {
        return this.originalString;
    }

    public long getPatch() {
        if (this.trimmedSubversionNumbers.size() > 2) {
            return this.trimmedSubversionNumbers.get(2).longValue();
        }
        return 0L;
    }

    public List<Long> getSubversionNumbers() {
        return this.subversionNumbers;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public final int hashCode() {
        int iHashCode = (this.releaseType.hashCode() + (this.trimmedSubversionNumbers.hashCode() * 31)) * 31;
        long j2 = this.preReleaseVersion;
        return iHashCode + ((int) (j2 ^ (j2 >>> 32)));
    }

    public boolean isAtLeast(String str) {
        return isAtLeast(new Version(str));
    }

    public boolean isEqual(String str) {
        return isEqual(new Version(str));
    }

    public boolean isHigherThan(String str) {
        return isHigherThan(new Version(str));
    }

    public boolean isLowerThan(String str) {
        return isLowerThan(new Version(str));
    }

    public String toString() {
        return String.valueOf(this.originalString);
    }

    public boolean isAtLeast(Version version) {
        return compareTo(version) >= 0;
    }

    public boolean isEqual(Version version) {
        return compareTo(version) == 0;
    }

    public boolean isHigherThan(Version version) {
        return compareTo(version) > 0;
    }

    public boolean isLowerThan(Version version) {
        return compareTo(version) < 0;
    }

    public boolean isAtLeast(String str, boolean z) {
        return isAtLeast(new Version(str), z);
    }

    public boolean isAtLeast(Version version, boolean z) {
        return compareTo(version, z) >= 0;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Version version) {
        return compareTo(version, false);
    }

    public Version(String str) {
        this(str, false);
    }
}
