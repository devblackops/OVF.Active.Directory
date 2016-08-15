#require -modules poshspec

Import-Module -Name poshspec -Verbose:$false -ErrorAction Stop

describe 'DNS' {
    context 'Availability' {
        service DNS status { should be running }
        service Dnscache status { should be running }
        TcpPort localhost 53 TcpTestSucceeded { Should Be $true }        
    }
}

describe 'Global Catalog' {
    context 'Availability' {
        TcpPort localhost 3268 TcpTestSucceeded { Should Be $true }
    }
}

describe 'Active Directory Domain Services' {
    service NTDS status { should be running }
    service Netlogon status { should be running }    
}

describe 'Key Distribution Center' {
    context 'Availability' {
        service Kdc status { should be running }
    }
}

describe 'Active Directory Web Services' {
    context 'Availbility' {
        service ADWS status { should be running }
        TcpPort localhost 9389 TcpTestSucceeded { Should Be $true }
    }
}

describe 'LDAP' {
    context 'Availbility' {
        TcpPort localhost 389 TcpTestSucceeded { Should Be $true } 
    }
}

describe 'DFS' {
    context 'Availability' {
        service Dfs status { should be running }
        service DFSR status { should be running }
    }
}
