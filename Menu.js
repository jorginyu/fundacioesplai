import React from 'react';
import './css/Menu.css';
import { Col, Row } from 'reactstrap';
import SideNav, { Toggle, Nav, NavItem, NavIcon, NavText } from '@trendmicro/react-sidenav';


export default class Menu extends React.Component {


    render() {

        return (

                    <SideNav
                        onSelect={(selected) => {
                            // Add your code here
                        }}
                    >
                        <SideNav.Toggle />
                        <SideNav.Nav defaultSelected="home">
                            <NavItem eventKey="home">
                                <NavIcon>
                                    <i className="material-icons" style={{ fontSize: '30pt', padding:'0px'} }>home</i>
                                </NavIcon>
                                <NavText>
                                    Principal
            </NavText>
                            </NavItem>
                            <NavItem eventKey="Ofertas">
                                <NavIcon>
                                    <i className="fa fa-fw fa-line-chart" style={{ fontSize: '1.75em' }} />
                                </NavIcon>
                                <NavText>
                                    Ofertas
            </NavText>
                                <NavItem eventKey="charts/linechart">
                                    <NavText>
                                        Line Chart
                </NavText>
                                </NavItem>
                                <NavItem eventKey="charts/barchart">
                                    <NavText>
                                        Bar Chart
                </NavText>
                                </NavItem>
                            </NavItem>
                        </SideNav.Nav>
                    </SideNav>

        );
    }
}